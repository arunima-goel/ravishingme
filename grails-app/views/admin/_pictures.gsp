<h2>Pictures</h2>

	<g:uploadForm controller="profile" action="uploadFromInputStream">
		<label for="photo">Photo</label>
		<input type="file" name="photo" id="photo" />
		<input type="submit" value="Upload" />
	</g:uploadForm>
	
	<g:link mapping="deletePhoto">Delete photo</g:link>
	
	<img src="https://s3.amazonaws.com/ravishingme/testpath/testpath2/coffee.jpeg">
