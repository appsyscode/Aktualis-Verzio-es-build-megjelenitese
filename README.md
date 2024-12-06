# Aktualis-Verzio-es-build-megjelenitese

A készüléken  a beállítások alkalmazásban -> app megjelenik a verziószám

````objective-c  
  NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];               
  NSString *version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];     
  NSString *build = [infoDictionary objectForKey:@"CFBundleVersion"];                   
  NSString *label = [NSString stringWithFormat:@"%@ (%@)",version,build];               
  [[NSUserDefaults standardUserDefaults] setObject:label forKey:@"bundleVersionKey"];  
  ````
  
  A projekten belül beállítva a Run Scriptnél az automata verziószám emelkedést.