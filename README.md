# hadoop_refrepo
This github repo provides a sample of how to structure a Hadoop project, so that it follows the conventions required
to use Hodor. The concepts demonstrated by this repo, such as the difference between worker and driver Oozie workflows
is documentated by hodor. To view Hodor's documentation of these and other concepts, see the Getting Help section below.

Getting Help
============
Hodor includes a rich help system that can be separated into overview, detail and topic help pages. For example, here are a few help and topic commands that provide a sprectrum of depth, from overview to conceptual tutorials.

```bash
$ hodor                                 # Prints generation information about Hodor
$ hodor -T                              # Prints a more detail overview of Hodor's namespaces and commands
$ hodor help oozie                      # Prints an overview of the Oozie namespace, its purpose and commands
$ hodor help oozie:display_job          # Prints detailed information about the display_job command, arguments and options
$ hodor oozie:topic drivers.yml         # Provides an overview of a key concept (drivers.yml) utilized by the namespace
$ hodor master:topic clusters.yml       # Provides an overview of the clusters.yml file and its central role in Hodor
```


## Future / Enhancements

Pull requests will be very happily considered.

__Maintained by Dean Hallman__

## License

The MIT License (MIT)

Copyright (c) 2015 Dean Hallman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
