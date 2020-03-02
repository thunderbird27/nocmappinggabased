	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: /* STATE 1 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: /* STATE 2 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC startup */
	case 5: /* STATE 194 */
		sv_restor();
		goto R999;

	case 6: /* STATE 195 */
		;
		now.startproc = trpt->bup.oval;
		;
		goto R999;

	case 7: /* STATE 196 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: /* STATE 197 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: /* STATE 198 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controller */

	case 10: /* STATE 2 */
		;
		((P1 *)this)->_9_timerctr[1] = trpt->bup.ovals[1];
		((P1 *)this)->_9_timerctr[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
	case 11: /* STATE 113 */
		sv_restor();
		goto R999;

	case 12: /* STATE 117 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC router_node */
;
		;
			case 14: /* STATE 365 */
		sv_restor();
		goto R999;

	case 15: /* STATE 369 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

