<?php
error_reporting(0);
// Function to handle keyword blocking and redirection
function handleKeywordBlockingAndRedirection($requestBody) {
    $keywords = array(
        'SELECT', 'UNION', 'INSERT', 'UPDATE', 'DELETE', 'FROM', 'WHERE', '<svg',
        'DROP', 'CREATE', 'ALTER', 'MAKE_SET', 'EXPORT_SET', 'INFORMATION_SCHEMA',
        'TABLE_NAME', 'COLUMN_NAME', '\'', '\-', '\"', '\*', '\+', '\!', '@', ':', 'ORDER BY', 'JSON_LENGTH', '%20', '@@version
    ', 'version', 'version()', '@@version', 'distinctrow', 'make_set', 'hex', 'unhex', 'bin', 'md5', 'sha1', 'like', 'concat', 'group_concat', 'group', '50000', 'sel/**/ect', 'uni/**/on', 'limit', '\'', '%27'
    );

    $ssiPatterns = [
        '/<!--#include/i',
        '/<!--#echo/i',
        '/<!--#flastmod/i',
        '/<!--#fsize/i',
        '/<\s*svg/i',
        '/onload/i',
        '/onclick/i',
        '/\beval\b/i',
        '/\batob\b/i',
        '/<\s*img/i',
        '/<\s*a/i',
        '/\bprompt\b/i',
        '/\bwindow\b/i',
        '/\blocation\b/i',
        '/<\s*audio/i',
        '/<\s*video/i',
        '/<\s*object/i',
        '/<\s*title/i',
        '/<\s*html/i',
        '/<\s*body/i',
        '/</i', // Less than sign
        '/>/i', // Greater than sign
        '/<\\/i', // Closing tag (with backslash)
        '/\balert\b/i',
        '/<\s*applet/i',
        '/<\s*div/i',
        '/<\s*frameset/i',
        '/<\s*script/i',
        '/<\s*style/i',
        '/<\s*meta/i',
        '/<\s*form/i',
        '/<\s*link/i',
        '/<\s*embed/i',
        '/<\s*meta/i',
        '/<\s*object/i',
        '/<\s*iframe/i',
        '/\bxss\b/i',
        '/\bexpression\b/i',
        '/\bls\b/i',
        '/\bla\b/i',
    ];

    // Check for any keywords or patterns in the request body
    $blocked = false;

    foreach ($keywords as $keyword) {
        if (stripos($requestBody, $keyword) !== false) {
            $blocked = true;
            break;
        }
    }

    foreach ($ssiPatterns as $pattern) {
        if (preg_match($pattern, $requestBody)) {
            $blocked = true;
            break;
        }
    }

    if ($blocked) {
          // Redirect the user to the original page with an error message
          header("Location: {$_SERVER['HTTP_REFERER']}?error=hacking-attempt-blocked");
          exit();
      }
  }

  // Function to check and block CSRF attacks
  function checkCSRF() {
      $referer = $_SERVER['HTTP_REFERER'];
      $host = $_SERVER['HTTP_HOST'];

      if (parse_url($referer, PHP_URL_HOST) !== $host) {
          // Redirect the user to the original page with an error message
          header("Location: {$_SERVER['HTTP_REFERER']}?error=hacking-attempt-blocked");
          exit();
      }
  }

  // Function to prevent Clickjacking
  function preventClickjacking() {
      header("X-Frame-Options: SAMEORIGIN");
  }

  // Function to prevent Directory Traversal
  function preventDirectoryTraversal($query) {
      if (strpos($query, '../') !== false) {
          // Redirect the user to the original page with an error message
          header("Location: {$_SERVER['HTTP_REFERER']}?error=hacking-attempt-blocked");
          exit();
      }
  }

  // Handle POST requests
  if ($_SERVER["REQUEST_METHOD"] === "POST") {
      // Get the request body
      $requestBody = file_get_contents('php://input');
      handleKeywordBlockingAndRedirection($requestBody);

      // Check for CSRF
      checkCSRF();
  }

  // Handle GET requests
  if ($_SERVER["REQUEST_METHOD"] === "GET") {
      // Check for any keywords or patterns in the query string
      $query = $_SERVER['QUERY_STRING'];
      handleKeywordBlockingAndRedirection($query);

      // Prevent Clickjacking
      preventClickjacking();

      // Prevent Directory Traversal
      preventDirectoryTraversal($query);
  }
  ?>

<?php
$con=mysqli_connect("localhost", "root", "", "crm");
if(mysqli_connect_errno()){
echo "Connection Fail".mysqli_connect_error();
}

?>
