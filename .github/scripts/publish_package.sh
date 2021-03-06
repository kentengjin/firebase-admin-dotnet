#!/bin/bash

# Copyright 2020 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
set -u

readonly UNPREFIXED_VERSION=`echo ${VERSION} | cut -c 2-`
dotnet nuget push Release/FirebaseAdmin.${UNPREFIXED_VERSION}.nupkg \
  -k ${NUGET_KEY} \
  -s https://api.nuget.org/v3/index.json
