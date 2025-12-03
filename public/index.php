<?php
//error_log("page debut");
session_start();
include_once "../vendor/autoload.php";
include_once "../bootstrap.php";
use Slim\Factory\AppFactory; 
use Slim\Http\Request;

$app = AppFactory::create();






// EXEMPLE 
// $app->get('/', [$accueilControleur, 'Accueil']);
// $app->get('/connexion', [$accueilControleur, 'Connexion']);
// $app->post('/seconnecter', [$accueilControleur, 'Seconnecter']);
// $app->get('/deconnexion', [$accueilControleur, 'Deconnexion']);
// $app->get('/sinscrire', [$accueilControleur, 'Sinscrire']);

$app->run();