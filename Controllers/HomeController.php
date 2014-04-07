<?php
namespace bundles\sample\Controllers;

/**
 *
 * @author info
 */
class HomeController extends \Library\Core\Auth
{

    public function __preDispatch()
    {

    }

    public function __postDispatch()
    {}

    public function indexAction()
    {

        $sJsMinFile  = ROOT_PATH . 'public/lib/sociableUx/build/sociable.ux.min.js';
        $sCssMinFile = ROOT_PATH . 'public/lib/sociableUx/build/sociable.ux.min.css';
        $sMinifiedJsCode = '';
        $sMinifiedCssCode = '';

        $aSociableUxJsLibs = array(
            '/lib/js/jquery-1.11.js',
            '/lib/plugins/layout/js/jquery.layout.min.js',
            '/lib/plugins/bootstrap3/js/bootstrap.js',
            '/lib/plugins/bootstrap-switch/js/bootstrap-switch.min.js',
            '/lib/plugins/pnotify/js/jquery.pnotify.js',
            '/lib/sociableUx/js/ux.core.js',
            '/lib/sociableUx/js/charts.core.js',
            '/lib/sociableUx/js/core.js'
        );
        $aSociableUxCssLibs = array(
            '/lib/sociableUx/css/core.classes.css',
            '/lib/sociableUx/css/core.ui.css'
        );

        foreach ($aSociableUxJsLibs as $sJsLibPath) {
            $sMinifiedJsCode .= \Library\Core\Minify::js(file_get_contents(ROOT_PATH . 'public' . $sJsLibPath));
        }
        foreach ($aSociableUxCssLibs as $sCssLibPath) {
            $sMinifiedCssCode .= \Library\Core\Minify::css(file_get_contents(ROOT_PATH . 'public' . $sCssLibPath));
        }

        if (!$oHandle = fopen($sJsMinFile, 'a+')) {
            echo "Impossible d'ouvrir le fichier ($sJsMinFile)";
            exit;
        }
        if (fwrite($oHandle, $sMinifiedJsCode) === FALSE) {
            echo "Impossible d'écrire dans le fichier ($sJsMinFile)";
            exit;
        }

        if (!$oHandle = fopen($sCssMinFile, 'a+')) {
            echo "Impossible d'ouvrir le fichier ($sCssMinFile)";
            exit;
        }
        if (fwrite($oHandle, $sMinifiedCssCode) === FALSE) {
            echo "Impossible d'écrire dans le fichier ($sCssMinFile)";
            exit;
        }

        fclose($oHandle);

        $this->render('sample/index.tpl');
    }
}

?>
