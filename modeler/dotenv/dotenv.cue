/// To fully implement this, when importing the dotenv package, build your `envFile` struct using the `#EnvFile` definition.
/// Then create a tool file in the same folder as your dotenv implementation with the following function:
/// ```
/// package <your_package_name>
///
/// import (
/// 	"tool/cli"
/// 	"strings"
/// )
///
/// command: gen:  {
/// 	print: cli.Print & {
/// 		text: strings.Join([for k, v in envFile {"\(k)=\(v)"}], "\n",) + "\n"
/// 	}
/// }
/// ```	
///
/// execute from the location of your env implementation with `cue cmd gen > path/to/your/.env`
///
/// See modeler/examples/dotenv_example for a full implementation example.

package dotenv

#Environment: string & ("local" | "dev" | "prod")
#Path: =~"^(\\$\\{[a-zA-Z0-9_]+\\}|[a-zA-Z0-9./_-])+$"
#UUID: =~"^\\w{8}-\\w{4}-\\w{4}-\\w{4}-\\w{12}$"
#URL: =~"^https?\\:\\/\\/(?:(?:(?:\\w|\\-)+\\.)+(?:com|org|edu|net|dev|sh)|localhost)(?:\\:\\d{2,6})?(?:\\/(?:\\w|\\_\\-|\\.|\\%|\\?|\\=|\\.)+)*$"


#EnvFile: {
	[_]: #Environment | #Path | #UUID | #URL | string | number
}
