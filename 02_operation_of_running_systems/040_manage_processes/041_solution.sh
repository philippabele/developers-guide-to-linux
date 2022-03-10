#!/bin/bash
sleep 300 &
jobs
fg # or fg %<JID>, but as this will be the only background job listed it will be brought to the foreground