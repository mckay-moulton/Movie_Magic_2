#!/bin/bash
echo "STARTING APP CONFIG"
sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
sudo yum install aspnetcore-runtime-6.0
cd /
sudo mkdir wwwroot
cd wwwroot
sudo mkdir my-mvc-app
cd my-mvc-app
sudo wget -O "Manifest3.zip" "https://moviemagicbucket.s3.us-east-1.amazonaws.com/Manifest3.zip?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOL%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSJHMEUCIQCFiGz%2F0YV5seRBT3CLi%2FlaUSgN4hltMwTYaTou8hTSAQIgOFELItaiPMeLoRUD7S9Fi7aNX0LwBtURS0VPTnFC0tAq7QIIq%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2NjEzODc5NTkxMDkiDOolWsPJXDiUgm83HyrBAlePH3Rhf93rSrhMxQeLeKZ2Krtk8uZWvYopNxbpQKMLHYxPHAPxgtwce4VlqDIohVHu2mAColciKEPkdI4d%2FlN5Bj6LZuQrTk1gW%2BGm%2BGPPudDjX%2B87YIfI8lY6fPt8%2BbF%2FbbXjuIOOFKS%2BVaM15FzcgAY7zqBhfsZvJAMZMqDFxJV7MMrEN1iQE5KPWEXdBYx41VWMMalNeE2vKxs0dslIhOz%2Fxgor6UYQm0fezDIaaPsPFL9GtP%2BcjX59mP9v5wax%2ButzFiB1%2FWODnPpfqQJd3mg%2BWrR%2Fo1t1UK7Uw6juLYv7XngmfTWCgcSOQc4wnx0oGeUFxh2v%2BysM6lpu9ABN9hdqD5aklZtlfFw2Pnp4J6bm2dNhH1YhIB9Nh6ZLFE1rYth67zsfpu69%2BTAjlKgqouhqPo%2B1rdZxJp%2F59M8dcDCilqGaBjqzAqe%2BuR8XFPKOW8OqHbn1qwDM9G7BRWtXQB2oz0BwhTpH7bF95%2Bu3tN3QJRiIkYK2rKaCtigYbjUL3TxFQ1FmscPPZZLtYwLq%2F0OU4sQ%2BM%2BYRhbtzPikCN%2BO%2B41kMRLThPm2%2Bh5KdrQWJISJCr%2BgQzoyhIDzxZ1PHeyZr69rGhlZ%2FQUzulIMdBiTjM%2Fnx65L7luncAg%2FgG8GUFVuIKx5Sdz2mnEBBIK5VI3R6nsIHSCsMdXAqTm%2FgGHHMpGv%2BHiYCtV0U1%2BPGIS3MggMoXNSVBjI62ckPSa7Ddek6Fk0ZzCNLj%2B96SolhswI9dRRClpDr%2FWAxDBNjbj5EiS%2FfsbYnlRONaRoTdaUoqYesQWpokDYer71oj9w7UhscNFAWd%2BnRc%2B2ZgosSpUZZIEd0Kmj2fa%2FUnM0%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221013T174758Z&X-Amz-SignedHeaders=host&X-Amz-Expires=43200&X-Amz-Credential=ASIAZT7OLLNCSJGY2LWS%2F20221013%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=9a5445e830106104cab8b9060aa8026be349dd65567a32e8a4f4c1455fd73f6e"
sudo unzip Manifest3.zip
sudo dotnet Movie_Magic_2.dll --urls http://0.0.0.0:80