PARSE_AND_LIST_OPTIONS_CET='
  fprintf (file, _("\
  -z ibtplt                   Generate IBT-enabled PLT entries\n"));
  fprintf (file, _("\
  -z ibt                      Generate GNU_PROPERTY_X86_FEATURE_1_IBT\n"));
  fprintf (file, _("\
  -z ibt-report=[none|warning|error] (default: none)\n\
                              Report missing IBT property\n"));
  fprintf (file, _("\
  -z shstk                    Generate GNU_PROPERTY_X86_FEATURE_1_SHSTK\n"));
  fprintf (file, _("\
  -z shstk-report=[none|warning|error] (default: none)\n\
                              Report missing SHSTK property\n"));
  fprintf (file, _("\
  -z cet-report=[none|warning|error] (default: none)\n\
                              Report missing IBT and SHSTK properties\n"));
'
PARSE_AND_LIST_ARGS_CASE_Z_CET='
      else if (strcmp (optarg, "ibtplt") == 0)
	params.ibtplt = true;
      else if (strcmp (optarg, "ibt") == 0)
	params.ibt = true;
      else if (strncmp (optarg, "ibt-report=", 11) == 0)
	{
	  if (strcmp (optarg + 11, "none") == 0)
	    params.ibt_report = prop_report_none;
	  else if (strcmp (optarg + 11, "warning") == 0)
	    params.ibt_report = prop_report_warning;
	  else if (strcmp (optarg + 11, "error") == 0)
	    params.ibt_report = prop_report_error;
	  else
	    fatal (_("%P: invalid option for -z ibt-report=: %s\n"),
		   optarg + 11);
	}
      else if (strcmp (optarg, "shstk") == 0)
	params.shstk = true;
      else if (strncmp (optarg, "shstk-report=", 13) == 0)
	{
	  if (strcmp (optarg + 13, "none") == 0)
	    params.shstk_report = prop_report_none;
	  else if (strcmp (optarg + 13, "warning") == 0)
	    params.shstk_report = prop_report_warning;
	  else if (strcmp (optarg + 13, "error") == 0)
	    params.shstk_report = prop_report_error;
	  else
	    fatal (_("%P: invalid option for -z shstk-report=: %s\n"),
		   optarg + 13);
	}
      else if (strncmp (optarg, "cet-report=", 11) == 0)
	{
	  if (strcmp (optarg + 11, "none") == 0)
	    {
	      params.ibt_report = prop_report_none;
	      params.shstk_report = prop_report_none;
	    }
	  else if (strcmp (optarg + 11, "warning") == 0)
	    {
	      params.ibt_report = prop_report_warning;
	      params.shstk_report = prop_report_warning;
	    }
	  else if (strcmp (optarg + 11, "error") == 0)
	    {
	      params.ibt_report = prop_report_error;
	      params.shstk_report = prop_report_error;
	    }
	  else
	    fatal (_("%P: invalid option for -z cet-report=: %s\n"),
		   optarg + 11);
	}
'

PARSE_AND_LIST_OPTIONS="$PARSE_AND_LIST_OPTIONS $PARSE_AND_LIST_OPTIONS_CET"
PARSE_AND_LIST_ARGS_CASE_Z="$PARSE_AND_LIST_ARGS_CASE_Z $PARSE_AND_LIST_ARGS_CASE_Z_CET"
