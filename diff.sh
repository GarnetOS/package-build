#!/bin/bash
join -v1 -v2 <(sort current.txt) <(sort default.txt)
