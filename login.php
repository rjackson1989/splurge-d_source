function Login(){
    if(empty($_POST['user']))
	{
		$this->HandleError("User name is empty");
		return false;
	}
	if(empty($_POST['pass']))
	{
		$this->HandleError("Password is empty");
		return false;
	}
	$username = trim($_POST['user']);
	$password = trim($_POST['pass']);
	
	if(!$this->CheckValidLogin($username, $password))
	{
		return false;
	}
	session_start();
	$_SESSION[$this->GetLoginSessionVar()] = $username;
	
	return true;
}

function CheckValidLogin($username, $password)
{
	
}