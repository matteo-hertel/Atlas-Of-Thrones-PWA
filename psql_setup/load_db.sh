#!/bin/bash
#psql -f db_init.sql
psql atlas_of_thrones < /var/init/atlas_of_thrones.sql
