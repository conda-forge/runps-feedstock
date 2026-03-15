#!/bin/bash
set -euo pipefail

if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" == "1" ]]; then
    "$BUILD_PREFIX/bin/python" -m pip install . --no-deps --no-build-isolation -vv --prefix "$PREFIX"
else
    "$PYTHON" -m pip install . --no-deps --no-build-isolation -vv
fi
