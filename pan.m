#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: /* STATE 1 - noc6.txt:1116 - [(run startup())] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - noc6.txt:1118 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC startup */
	case 5: /* STATE 194 - noc6.txt:825 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[2][194] = 1;
		reached[2][t->st] = 1;
		reached[2][tt] = 1;
S_486_0: /* 2 */
		router[0].start_packet_index = 2;
#ifdef VAR_RANGES
		logval("router[0].start_packet_index", router[0].start_packet_index);
#endif
		;
S_487_0: /* 2 */
		router[0].end_packet_index = 2;
#ifdef VAR_RANGES
		logval("router[0].end_packet_index", router[0].end_packet_index);
#endif
		;
S_488_0: /* 2 */
		router[1].start_packet_index = 3;
#ifdef VAR_RANGES
		logval("router[1].start_packet_index", router[1].start_packet_index);
#endif
		;
S_489_0: /* 2 */
		router[1].end_packet_index = 5;
#ifdef VAR_RANGES
		logval("router[1].end_packet_index", router[1].end_packet_index);
#endif
		;
S_490_0: /* 2 */
		router[2].start_packet_index = 6;
#ifdef VAR_RANGES
		logval("router[2].start_packet_index", router[2].start_packet_index);
#endif
		;
S_491_0: /* 2 */
		router[2].end_packet_index = 6;
#ifdef VAR_RANGES
		logval("router[2].end_packet_index", router[2].end_packet_index);
#endif
		;
S_492_0: /* 2 */
		router[3].start_packet_index = 99;
#ifdef VAR_RANGES
		logval("router[3].start_packet_index", router[3].start_packet_index);
#endif
		;
S_493_0: /* 2 */
		router[3].end_packet_index = 99;
#ifdef VAR_RANGES
		logval("router[3].end_packet_index", router[3].end_packet_index);
#endif
		;
S_494_0: /* 2 */
		router[4].start_packet_index = 0;
#ifdef VAR_RANGES
		logval("router[4].start_packet_index", router[4].start_packet_index);
#endif
		;
S_495_0: /* 2 */
		router[4].end_packet_index = 1;
#ifdef VAR_RANGES
		logval("router[4].end_packet_index", router[4].end_packet_index);
#endif
		;
S_496_0: /* 2 */
		router[5].start_packet_index = 7;
#ifdef VAR_RANGES
		logval("router[5].start_packet_index", router[5].start_packet_index);
#endif
		;
S_497_0: /* 2 */
		router[5].end_packet_index = 7;
#ifdef VAR_RANGES
		logval("router[5].end_packet_index", router[5].end_packet_index);
#endif
		;
S_498_0: /* 2 */
		packet_list[0].dest_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[0].dest_index_x", ((int)packet_list[0].dest_index_x));
#endif
		;
S_499_0: /* 2 */
		packet_list[0].dest_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[0].dest_index_y", ((int)packet_list[0].dest_index_y));
#endif
		;
S_500_0: /* 2 */
		packet_list[0].pkt_index = 4;
#ifdef VAR_RANGES
		logval("packet_list[0].pkt_index", packet_list[0].pkt_index);
#endif
		;
S_501_0: /* 2 */
		packet_list[0].src_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[0].src_index_x", ((int)packet_list[0].src_index_x));
#endif
		;
S_502_0: /* 2 */
		packet_list[0].src_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[0].src_index_y", ((int)packet_list[0].src_index_y));
#endif
		;
S_503_0: /* 2 */
		packet_list[0].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[0].hopcount", packet_list[0].hopcount);
#endif
		;
S_504_0: /* 2 */
		packet_list[0].timerref = 2;
#ifdef VAR_RANGES
		logval("packet_list[0].timerref", ((int)packet_list[0].timerref));
#endif
		;
S_505_0: /* 2 */
		packet_list[1].dest_index_x = 0;
#ifdef VAR_RANGES
		logval("packet_list[1].dest_index_x", ((int)packet_list[1].dest_index_x));
#endif
		;
S_506_0: /* 2 */
		packet_list[1].dest_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[1].dest_index_y", ((int)packet_list[1].dest_index_y));
#endif
		;
S_507_0: /* 2 */
		packet_list[1].pkt_index = 4;
#ifdef VAR_RANGES
		logval("packet_list[1].pkt_index", packet_list[1].pkt_index);
#endif
		;
S_508_0: /* 2 */
		packet_list[1].src_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[1].src_index_x", ((int)packet_list[1].src_index_x));
#endif
		;
S_509_0: /* 2 */
		packet_list[1].src_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[1].src_index_y", ((int)packet_list[1].src_index_y));
#endif
		;
S_510_0: /* 2 */
		packet_list[1].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[1].hopcount", packet_list[1].hopcount);
#endif
		;
S_511_0: /* 2 */
		packet_list[1].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[1].timerref", ((int)packet_list[1].timerref));
#endif
		;
S_512_0: /* 2 */
		packet_list[2].dest_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[2].dest_index_x", ((int)packet_list[2].dest_index_x));
#endif
		;
S_513_0: /* 2 */
		packet_list[2].dest_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[2].dest_index_y", ((int)packet_list[2].dest_index_y));
#endif
		;
S_514_0: /* 2 */
		packet_list[2].pkt_index = 0;
#ifdef VAR_RANGES
		logval("packet_list[2].pkt_index", packet_list[2].pkt_index);
#endif
		;
S_515_0: /* 2 */
		packet_list[2].src_index_x = 0;
#ifdef VAR_RANGES
		logval("packet_list[2].src_index_x", ((int)packet_list[2].src_index_x));
#endif
		;
S_516_0: /* 2 */
		packet_list[2].src_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[2].src_index_y", ((int)packet_list[2].src_index_y));
#endif
		;
S_517_0: /* 2 */
		packet_list[2].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[2].hopcount", packet_list[2].hopcount);
#endif
		;
S_518_0: /* 2 */
		packet_list[2].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[2].timerref", ((int)packet_list[2].timerref));
#endif
		;
S_519_0: /* 2 */
		packet_list[3].dest_index_x = 0;
#ifdef VAR_RANGES
		logval("packet_list[3].dest_index_x", ((int)packet_list[3].dest_index_x));
#endif
		;
S_520_0: /* 2 */
		packet_list[3].dest_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[3].dest_index_y", ((int)packet_list[3].dest_index_y));
#endif
		;
S_521_0: /* 2 */
		packet_list[3].pkt_index = 1;
#ifdef VAR_RANGES
		logval("packet_list[3].pkt_index", packet_list[3].pkt_index);
#endif
		;
S_522_0: /* 2 */
		packet_list[3].src_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[3].src_index_x", ((int)packet_list[3].src_index_x));
#endif
		;
S_523_0: /* 2 */
		packet_list[3].src_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[3].src_index_y", ((int)packet_list[3].src_index_y));
#endif
		;
S_524_0: /* 2 */
		packet_list[3].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[3].hopcount", packet_list[3].hopcount);
#endif
		;
S_525_0: /* 2 */
		packet_list[3].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[3].timerref", ((int)packet_list[3].timerref));
#endif
		;
S_526_0: /* 2 */
		packet_list[4].dest_index_x = 2;
#ifdef VAR_RANGES
		logval("packet_list[4].dest_index_x", ((int)packet_list[4].dest_index_x));
#endif
		;
S_527_0: /* 2 */
		packet_list[4].dest_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[4].dest_index_y", ((int)packet_list[4].dest_index_y));
#endif
		;
S_528_0: /* 2 */
		packet_list[4].pkt_index = 1;
#ifdef VAR_RANGES
		logval("packet_list[4].pkt_index", packet_list[4].pkt_index);
#endif
		;
S_529_0: /* 2 */
		packet_list[4].src_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[4].src_index_x", ((int)packet_list[4].src_index_x));
#endif
		;
S_530_0: /* 2 */
		packet_list[4].src_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[4].src_index_y", ((int)packet_list[4].src_index_y));
#endif
		;
S_531_0: /* 2 */
		packet_list[4].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[4].hopcount", packet_list[4].hopcount);
#endif
		;
S_532_0: /* 2 */
		packet_list[4].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[4].timerref", ((int)packet_list[4].timerref));
#endif
		;
S_533_0: /* 2 */
		packet_list[5].dest_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[5].dest_index_x", ((int)packet_list[5].dest_index_x));
#endif
		;
S_534_0: /* 2 */
		packet_list[5].dest_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[5].dest_index_y", ((int)packet_list[5].dest_index_y));
#endif
		;
S_535_0: /* 2 */
		packet_list[5].pkt_index = 1;
#ifdef VAR_RANGES
		logval("packet_list[5].pkt_index", packet_list[5].pkt_index);
#endif
		;
S_536_0: /* 2 */
		packet_list[5].src_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[5].src_index_x", ((int)packet_list[5].src_index_x));
#endif
		;
S_537_0: /* 2 */
		packet_list[5].src_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[5].src_index_y", ((int)packet_list[5].src_index_y));
#endif
		;
S_538_0: /* 2 */
		packet_list[5].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[5].hopcount", packet_list[5].hopcount);
#endif
		;
S_539_0: /* 2 */
		packet_list[5].timerref = 2;
#ifdef VAR_RANGES
		logval("packet_list[5].timerref", ((int)packet_list[5].timerref));
#endif
		;
S_540_0: /* 2 */
		packet_list[6].dest_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[6].dest_index_x", ((int)packet_list[6].dest_index_x));
#endif
		;
S_541_0: /* 2 */
		packet_list[6].dest_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[6].dest_index_y", ((int)packet_list[6].dest_index_y));
#endif
		;
S_542_0: /* 2 */
		packet_list[6].pkt_index = 2;
#ifdef VAR_RANGES
		logval("packet_list[6].pkt_index", packet_list[6].pkt_index);
#endif
		;
S_543_0: /* 2 */
		packet_list[6].src_index_x = 2;
#ifdef VAR_RANGES
		logval("packet_list[6].src_index_x", ((int)packet_list[6].src_index_x));
#endif
		;
S_544_0: /* 2 */
		packet_list[6].src_index_y = 0;
#ifdef VAR_RANGES
		logval("packet_list[6].src_index_y", ((int)packet_list[6].src_index_y));
#endif
		;
S_545_0: /* 2 */
		packet_list[6].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[6].hopcount", packet_list[6].hopcount);
#endif
		;
S_546_0: /* 2 */
		packet_list[6].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[6].timerref", ((int)packet_list[6].timerref));
#endif
		;
S_547_0: /* 2 */
		packet_list[7].dest_index_x = 1;
#ifdef VAR_RANGES
		logval("packet_list[7].dest_index_x", ((int)packet_list[7].dest_index_x));
#endif
		;
S_548_0: /* 2 */
		packet_list[7].dest_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[7].dest_index_y", ((int)packet_list[7].dest_index_y));
#endif
		;
S_549_0: /* 2 */
		packet_list[7].pkt_index = 3;
#ifdef VAR_RANGES
		logval("packet_list[7].pkt_index", packet_list[7].pkt_index);
#endif
		;
S_550_0: /* 2 */
		packet_list[7].src_index_x = 2;
#ifdef VAR_RANGES
		logval("packet_list[7].src_index_x", ((int)packet_list[7].src_index_x));
#endif
		;
S_551_0: /* 2 */
		packet_list[7].src_index_y = 1;
#ifdef VAR_RANGES
		logval("packet_list[7].src_index_y", ((int)packet_list[7].src_index_y));
#endif
		;
S_552_0: /* 2 */
		packet_list[7].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[7].hopcount", packet_list[7].hopcount);
#endif
		;
S_553_0: /* 2 */
		packet_list[7].timerref = 5;
#ifdef VAR_RANGES
		logval("packet_list[7].timerref", ((int)packet_list[7].timerref));
#endif
		;
S_554_0: /* 2 */
		router_id_x[0] = 0;
#ifdef VAR_RANGES
		logval("router_id_x[0]", ((int)router_id_x[0]));
#endif
		;
S_555_0: /* 2 */
		router_id_y[0] = 0;
#ifdef VAR_RANGES
		logval("router_id_y[0]", ((int)router_id_y[0]));
#endif
		;
S_556_0: /* 2 */
		router_id_x[1] = 1;
#ifdef VAR_RANGES
		logval("router_id_x[1]", ((int)router_id_x[1]));
#endif
		;
S_557_0: /* 2 */
		router_id_y[1] = 0;
#ifdef VAR_RANGES
		logval("router_id_y[1]", ((int)router_id_y[1]));
#endif
		;
S_558_0: /* 2 */
		router_id_x[2] = 2;
#ifdef VAR_RANGES
		logval("router_id_x[2]", ((int)router_id_x[2]));
#endif
		;
S_559_0: /* 2 */
		router_id_y[2] = 0;
#ifdef VAR_RANGES
		logval("router_id_y[2]", ((int)router_id_y[2]));
#endif
		;
S_560_0: /* 2 */
		router_id_x[3] = 0;
#ifdef VAR_RANGES
		logval("router_id_x[3]", ((int)router_id_x[3]));
#endif
		;
S_561_0: /* 2 */
		router_id_y[3] = 1;
#ifdef VAR_RANGES
		logval("router_id_y[3]", ((int)router_id_y[3]));
#endif
		;
S_562_0: /* 2 */
		router_id_x[4] = 1;
#ifdef VAR_RANGES
		logval("router_id_x[4]", ((int)router_id_x[4]));
#endif
		;
S_563_0: /* 2 */
		router_id_y[4] = 1;
#ifdef VAR_RANGES
		logval("router_id_y[4]", ((int)router_id_y[4]));
#endif
		;
S_564_0: /* 2 */
		router_id_x[5] = 2;
#ifdef VAR_RANGES
		logval("router_id_x[5]", ((int)router_id_x[5]));
#endif
		;
S_565_0: /* 2 */
		router_id_y[5] = 1;
#ifdef VAR_RANGES
		logval("router_id_y[5]", ((int)router_id_y[5]));
#endif
		;
S_566_0: /* 2 */
		router[0].input_output_connection_map_h[2] = 1;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_map_h[2]", ((int)router[0].input_output_connection_map_h[2]));
#endif
		;
S_567_0: /* 2 */
		router[0].input_output_connection_port_h[2] = 3;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_port_h[2]", ((int)router[0].input_output_connection_port_h[2]));
#endif
		;
S_568_0: /* 2 */
		router[0].input_output_connection_map_h[1] = 3;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_map_h[1]", ((int)router[0].input_output_connection_map_h[1]));
#endif
		;
S_569_0: /* 2 */
		router[0].input_output_connection_port_h[1] = 4;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_port_h[1]", ((int)router[0].input_output_connection_port_h[1]));
#endif
		;
S_570_0: /* 2 */
		router[0].input_output_connection_map_h[3] = 11;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_map_h[3]", ((int)router[0].input_output_connection_map_h[3]));
#endif
		;
S_571_0: /* 2 */
		router[0].input_output_connection_port_h[3] = 6;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_port_h[3]", ((int)router[0].input_output_connection_port_h[3]));
#endif
		;
S_572_0: /* 2 */
		router[0].input_output_connection_map_h[4] = 11;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_map_h[4]", ((int)router[0].input_output_connection_map_h[4]));
#endif
		;
S_573_0: /* 2 */
		router[0].input_output_connection_port_h[4] = 6;
#ifdef VAR_RANGES
		logval("router[0].input_output_connection_port_h[4]", ((int)router[0].input_output_connection_port_h[4]));
#endif
		;
S_574_0: /* 2 */
		router[1].input_output_connection_map_h[2] = 2;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_map_h[2]", ((int)router[1].input_output_connection_map_h[2]));
#endif
		;
S_575_0: /* 2 */
		router[1].input_output_connection_port_h[2] = 3;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_port_h[2]", ((int)router[1].input_output_connection_port_h[2]));
#endif
		;
S_576_0: /* 2 */
		router[1].input_output_connection_map_h[1] = 4;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_map_h[1]", ((int)router[1].input_output_connection_map_h[1]));
#endif
		;
S_577_0: /* 2 */
		router[1].input_output_connection_port_h[1] = 4;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_port_h[1]", ((int)router[1].input_output_connection_port_h[1]));
#endif
		;
S_578_0: /* 2 */
		router[1].input_output_connection_map_h[3] = 0;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_map_h[3]", ((int)router[1].input_output_connection_map_h[3]));
#endif
		;
S_579_0: /* 2 */
		router[1].input_output_connection_port_h[3] = 2;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_port_h[3]", ((int)router[1].input_output_connection_port_h[3]));
#endif
		;
S_580_0: /* 2 */
		router[1].input_output_connection_map_h[4] = 11;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_map_h[4]", ((int)router[1].input_output_connection_map_h[4]));
#endif
		;
S_581_0: /* 2 */
		router[1].input_output_connection_port_h[4] = 6;
#ifdef VAR_RANGES
		logval("router[1].input_output_connection_port_h[4]", ((int)router[1].input_output_connection_port_h[4]));
#endif
		;
S_582_0: /* 2 */
		router[2].input_output_connection_map_h[1] = 5;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_map_h[1]", ((int)router[2].input_output_connection_map_h[1]));
#endif
		;
S_583_0: /* 2 */
		router[2].input_output_connection_port_h[1] = 4;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_port_h[1]", ((int)router[2].input_output_connection_port_h[1]));
#endif
		;
S_584_0: /* 2 */
		router[2].input_output_connection_map_h[3] = 1;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_map_h[3]", ((int)router[2].input_output_connection_map_h[3]));
#endif
		;
S_585_0: /* 2 */
		router[2].input_output_connection_port_h[3] = 2;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_port_h[3]", ((int)router[2].input_output_connection_port_h[3]));
#endif
		;
S_586_0: /* 2 */
		router[2].input_output_connection_map_h[4] = 11;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_map_h[4]", ((int)router[2].input_output_connection_map_h[4]));
#endif
		;
S_587_0: /* 2 */
		router[2].input_output_connection_port_h[4] = 6;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_port_h[4]", ((int)router[2].input_output_connection_port_h[4]));
#endif
		;
S_588_0: /* 2 */
		router[2].input_output_connection_map_h[2] = 11;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_map_h[2]", ((int)router[2].input_output_connection_map_h[2]));
#endif
		;
S_589_0: /* 2 */
		router[2].input_output_connection_port_h[2] = 6;
#ifdef VAR_RANGES
		logval("router[2].input_output_connection_port_h[2]", ((int)router[2].input_output_connection_port_h[2]));
#endif
		;
S_590_0: /* 2 */
		router[3].input_output_connection_map_h[2] = 4;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_map_h[2]", ((int)router[3].input_output_connection_map_h[2]));
#endif
		;
S_591_0: /* 2 */
		router[3].input_output_connection_port_h[2] = 3;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_port_h[2]", ((int)router[3].input_output_connection_port_h[2]));
#endif
		;
S_592_0: /* 2 */
		router[3].input_output_connection_map_h[4] = 0;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_map_h[4]", ((int)router[3].input_output_connection_map_h[4]));
#endif
		;
S_593_0: /* 2 */
		router[3].input_output_connection_port_h[4] = 1;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_port_h[4]", ((int)router[3].input_output_connection_port_h[4]));
#endif
		;
S_594_0: /* 2 */
		router[3].input_output_connection_map_h[3] = 11;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_map_h[3]", ((int)router[3].input_output_connection_map_h[3]));
#endif
		;
S_595_0: /* 2 */
		router[3].input_output_connection_port_h[3] = 6;
#ifdef VAR_RANGES
		logval("router[3].input_output_connection_port_h[3]", ((int)router[3].input_output_connection_port_h[3]));
#endif
		;
S_596_0: /* 2 */
		router[4].input_output_connection_map_h[3] = 3;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_map_h[3]", ((int)router[4].input_output_connection_map_h[3]));
#endif
		;
S_597_0: /* 2 */
		router[4].input_output_connection_port_h[3] = 2;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_port_h[3]", ((int)router[4].input_output_connection_port_h[3]));
#endif
		;
S_598_0: /* 2 */
		router[4].input_output_connection_map_h[2] = 5;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_map_h[2]", ((int)router[4].input_output_connection_map_h[2]));
#endif
		;
S_599_0: /* 2 */
		router[4].input_output_connection_port_h[2] = 3;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_port_h[2]", ((int)router[4].input_output_connection_port_h[2]));
#endif
		;
S_600_0: /* 2 */
		router[4].input_output_connection_map_h[4] = 1;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_map_h[4]", ((int)router[4].input_output_connection_map_h[4]));
#endif
		;
S_601_0: /* 2 */
		router[4].input_output_connection_port_h[4] = 1;
#ifdef VAR_RANGES
		logval("router[4].input_output_connection_port_h[4]", ((int)router[4].input_output_connection_port_h[4]));
#endif
		;
S_602_0: /* 2 */
		router[5].input_output_connection_map_h[3] = 4;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_map_h[3]", ((int)router[5].input_output_connection_map_h[3]));
#endif
		;
S_603_0: /* 2 */
		router[5].input_output_connection_port_h[3] = 2;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_port_h[3]", ((int)router[5].input_output_connection_port_h[3]));
#endif
		;
S_604_0: /* 2 */
		router[5].input_output_connection_map_h[4] = 2;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_map_h[4]", ((int)router[5].input_output_connection_map_h[4]));
#endif
		;
S_605_0: /* 2 */
		router[5].input_output_connection_port_h[4] = 1;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_port_h[4]", ((int)router[5].input_output_connection_port_h[4]));
#endif
		;
S_606_0: /* 2 */
		router[5].input_output_connection_map_h[2] = 11;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_map_h[2]", ((int)router[5].input_output_connection_map_h[2]));
#endif
		;
S_607_0: /* 2 */
		router[5].input_output_connection_port_h[2] = 6;
#ifdef VAR_RANGES
		logval("router[5].input_output_connection_port_h[2]", ((int)router[5].input_output_connection_port_h[2]));
#endif
		;
S_652_0: /* 2 */
S_651_0: /* 2 */
S_608_0: /* 2 */
		if (!((((int)((P2 *)this)->_10_ctr)<6)))
			goto S_651_1;
S_645_0: /* 2 */
S_644_0: /* 2 */
S_609_0: /* 2 */
		if (!((((int)((P2 *)this)->_10_portctr)<5)))
			goto S_644_1;
S_610_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].inp_status_g[ Index(((P2 *)this)->_10_portctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].inp_status_g[startup:portctr]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].inp_status_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_611_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].output_status_g[ Index(((P2 *)this)->_10_portctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].output_status_g[startup:portctr]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].output_status_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_612_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].readbuff_g[ Index(((P2 *)this)->_10_portctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].readbuff_g[startup:portctr]", now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].readbuff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ]);
#endif
		;
S_613_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].writebuff_g[ Index(((P2 *)this)->_10_portctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].writebuff_g[startup:portctr]", now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].writebuff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ]);
#endif
		;
S_614_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].req_g[0] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].req_g[0]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req_g[0]));
#endif
		;
S_615_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].req_g[1] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].req_g[1]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req_g[1]));
#endif
		;
S_616_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].req_g[2] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].req_g[2]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req_g[2]));
#endif
		;
S_617_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].req_g[3] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].req_g[3]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req_g[3]));
#endif
		;
S_618_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].req_g[4] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].req_g[4]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req_g[4]));
#endif
		;
S_619_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].ack_g[0] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].ack_g[0]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack_g[0]));
#endif
		;
S_620_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].ack_g[1] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].ack_g[1]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack_g[1]));
#endif
		;
S_621_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].ack_g[2] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].ack_g[2]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack_g[2]));
#endif
		;
S_622_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].ack_g[3] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].ack_g[3]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack_g[3]));
#endif
		;
S_623_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff_g[ Index(((P2 *)this)->_10_portctr, 5) ].ack_g[4] = 0;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arb_buff_g[startup:portctr].ack_g[4]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack_g[4]));
#endif
		;
S_624_0: /* 2 */
		now.router_id[ Index(((P2 *)this)->_10_ctr, 6) ].arbitertoken_g[ Index(((P2 *)this)->_10_portctr, 5) ] = 5;
#ifdef VAR_RANGES
		logval("router_id[startup:ctr].arbitertoken_g[startup:portctr]", ((int)now.router_id[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arbitertoken_g[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_625_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].inp_status_h[ Index(((P2 *)this)->_10_portctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].inp_status_h[startup:portctr]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].inp_status_h[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_626_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].output_status_h[ Index(((P2 *)this)->_10_portctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].output_status_h[startup:portctr]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].output_status_h[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_627_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].readbuff_h[ Index(((P2 *)this)->_10_portctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[startup:ctr].readbuff_h[startup:portctr]", router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].readbuff_h[ Index(((int)((P2 *)this)->_10_portctr), 5) ]);
#endif
		;
S_628_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].writebuff_h[ Index(((P2 *)this)->_10_portctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[startup:ctr].writebuff_h[startup:portctr]", router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].writebuff_h[ Index(((int)((P2 *)this)->_10_portctr), 5) ]);
#endif
		;
S_629_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].req[0] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].req[0]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req[0]));
#endif
		;
S_630_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].req[1] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].req[1]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req[1]));
#endif
		;
S_631_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].req[2] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].req[2]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req[2]));
#endif
		;
S_632_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].req[3] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].req[3]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req[3]));
#endif
		;
S_633_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].req[4] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].req[4]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].req[4]));
#endif
		;
S_634_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].ack[0] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].ack[0]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack[0]));
#endif
		;
S_635_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].ack[1] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].ack[1]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack[1]));
#endif
		;
S_636_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].ack[2] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].ack[2]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack[2]));
#endif
		;
S_637_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].ack[3] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].ack[3]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack[3]));
#endif
		;
S_638_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arb_buff[ Index(((P2 *)this)->_10_portctr, 5) ].ack[4] = 0;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arb_buff[startup:portctr].ack[4]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arb_buff[ Index(((int)((P2 *)this)->_10_portctr), 5) ].ack[4]));
#endif
		;
S_639_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].arbitertoken[ Index(((P2 *)this)->_10_portctr, 5) ] = 5;
#ifdef VAR_RANGES
		logval("router[startup:ctr].arbitertoken[startup:portctr]", ((int)router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].arbitertoken[ Index(((int)((P2 *)this)->_10_portctr), 5) ]));
#endif
		;
S_640_0: /* 2 */
		((P2 *)this)->_10_portctr = (((int)((P2 *)this)->_10_portctr)+1);
#ifdef VAR_RANGES
		logval("startup:portctr", ((int)((P2 *)this)->_10_portctr));
#endif
		;
		goto S_645_0; /* ';' */
S_644_1: /* 3 */
S_641_0: /* 2 */
		/* else */;
S_642_0: /* 2 */
		((P2 *)this)->_10_portctr = 0;
#ifdef VAR_RANGES
		logval("startup:portctr", ((int)((P2 *)this)->_10_portctr));
#endif
		;
S_643_0: /* 2 */
		goto S_647_0;	/* 'goto' */
S_644_2: /* 3 */
		Uerror("blocking sel in d_step (nr.0, near line 1024)");
S_646_0: /* 2 */
		goto S_647_0;	/* 'break' */
S_647_0: /* 2 */
		router[ Index(((P2 *)this)->_10_ctr, 6) ].packet_base_index = router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].start_packet_index;
#ifdef VAR_RANGES
		logval("router[startup:ctr].packet_base_index", router[ Index(((int)((P2 *)this)->_10_ctr), 6) ].packet_base_index);
#endif
		;
S_648_0: /* 2 */
		((P2 *)this)->_10_ctr = (((int)((P2 *)this)->_10_ctr)+1);
#ifdef VAR_RANGES
		logval("startup:ctr", ((int)((P2 *)this)->_10_ctr));
#endif
		;
		goto S_652_0; /* ';' */
S_651_1: /* 3 */
S_649_0: /* 2 */
		/* else */;
S_650_0: /* 2 */
		goto S_654_0;	/* 'goto' */
S_651_2: /* 3 */
		Uerror("blocking sel in d_step (nr.1, near line 1022)");
S_653_0: /* 2 */
		goto S_654_0;	/* 'break' */
S_654_0: /* 2 */
		((P2 *)this)->_10_ctr = 0;
#ifdef VAR_RANGES
		logval("startup:ctr", ((int)((P2 *)this)->_10_ctr));
#endif
		;
S_677_0: /* 2 */
S_676_0: /* 2 */
S_655_0: /* 2 */
		if (!((((int)((P2 *)this)->_10_ctr)<8)))
			goto S_676_1;
S_656_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].txctr_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].txctr_g", now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].txctr_g);
#endif
		;
S_657_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].rcvctr_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].rcvctr_g", now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].rcvctr_g);
#endif
		;
S_658_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].packet_send_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].packet_send_g", ((int)now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].packet_send_g));
#endif
		;
S_659_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].packet_receive_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].packet_receive_g", ((int)now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].packet_receive_g));
#endif
		;
S_660_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].latencycount_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].latencycount_g", now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].latencycount_g);
#endif
		;
S_661_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].maxlatency_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].maxlatency_g", now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].maxlatency_g);
#endif
		;
S_662_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].start_latencycount_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].start_latencycount_g", ((int)now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].start_latencycount_g));
#endif
		;
S_663_0: /* 2 */
		now.packet_status_g[ Index(((P2 *)this)->_10_ctr, 8) ].stop_latencycount_g = 0;
#ifdef VAR_RANGES
		logval("packet_status_g[startup:ctr].stop_latencycount_g", ((int)now.packet_status_g[ Index(((int)((P2 *)this)->_10_ctr), 8) ].stop_latencycount_g));
#endif
		;
S_664_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].txctr = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].txctr", packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].txctr);
#endif
		;
S_665_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].rcvctr = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].rcvctr", packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].rcvctr);
#endif
		;
S_666_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].packet_send = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].packet_send", ((int)packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].packet_send));
#endif
		;
S_667_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].packet_receive = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].packet_receive", ((int)packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].packet_receive));
#endif
		;
S_668_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].latencycount", packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].latencycount);
#endif
		;
S_669_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].maxlatency = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].maxlatency", packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].maxlatency);
#endif
		;
S_670_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].start_latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].start_latencycount", ((int)packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].start_latencycount));
#endif
		;
S_671_0: /* 2 */
		packet_status[ Index(((P2 *)this)->_10_ctr, 8) ].stop_latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[startup:ctr].stop_latencycount", ((int)packet_status[ Index(((int)((P2 *)this)->_10_ctr), 8) ].stop_latencycount));
#endif
		;
S_672_0: /* 2 */
		now.injectpacket[ Index(((P2 *)this)->_10_ctr, 8) ] = 0;
#ifdef VAR_RANGES
		logval("injectpacket[startup:ctr]", ((int)now.injectpacket[ Index(((int)((P2 *)this)->_10_ctr), 8) ]));
#endif
		;
S_673_0: /* 2 */
		((P2 *)this)->_10_ctr = (((int)((P2 *)this)->_10_ctr)+1);
#ifdef VAR_RANGES
		logval("startup:ctr", ((int)((P2 *)this)->_10_ctr));
#endif
		;
		goto S_677_0; /* ';' */
S_676_1: /* 3 */
S_674_0: /* 2 */
		/* else */;
S_675_0: /* 2 */
		goto S_678_0;	/* 'goto' */
S_676_2: /* 3 */
		Uerror("blocking sel in d_step (nr.2, near line 1071)");
S_678_0: /* 2 */
		goto S_680_0;	/* 'break' */
S_680_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 6: /* STATE 195 - noc6.txt:1103 - [startproc = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][195] = 1;
		(trpt+1)->bup.oval = ((int)now.startproc);
		now.startproc = 0;
#ifdef VAR_RANGES
		logval("startproc", ((int)now.startproc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 196 - noc6.txt:1105 - [(run router_node())] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][196] = 1;
		if (!(addproc(II, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 197 - noc6.txt:1108 - [(run controller())] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][197] = 1;
		if (!(addproc(II, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 198 - noc6.txt:1111 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][198] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC controller */
	case 10: /* STATE 1 - noc6.txt:681 - [timerctr[0] = 2] (0:114:2 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_9_timerctr[0]);
		((P1 *)this)->_9_timerctr[0] = 2;
#ifdef VAR_RANGES
		logval("controller:timerctr[0]", ((int)((P1 *)this)->_9_timerctr[0]));
#endif
		;
		/* merge: timerctr[1] = 5(114, 2, 114) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->_9_timerctr[1]);
		((P1 *)this)->_9_timerctr[1] = 5;
#ifdef VAR_RANGES
		logval("controller:timerctr[1]", ((int)((P1 *)this)->_9_timerctr[1]));
#endif
		;
		/* merge: .(goto)(0, 115, 114) */
		reached[1][115] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: /* STATE 113 - noc6.txt:687 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[1][113] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;
S_372_0: /* 2 */
		((P1 *)this)->_9_pactr = 0;
#ifdef VAR_RANGES
		logval("controller:pactr", ((P1 *)this)->_9_pactr);
#endif
		;
S_373_0: /* 2 */
		((P1 *)this)->_9_lactr = 0;
#ifdef VAR_RANGES
		logval("controller:lactr", ((P1 *)this)->_9_lactr);
#endif
		;
S_374_0: /* 2 */
		((P1 *)this)->_9_tctr0 = 0;
#ifdef VAR_RANGES
		logval("controller:tctr0", ((P1 *)this)->_9_tctr0);
#endif
		;
S_375_0: /* 2 */
		((P1 *)this)->_9_updtpktctr = 0;
#ifdef VAR_RANGES
		logval("controller:updtpktctr", ((P1 *)this)->_9_updtpktctr);
#endif
		;
S_479_0: /* 2 */
S_376_0: /* 2 */
		if (!((((int)now.startproc)==0)))
			goto S_479_1;
S_377_0: /* 2 */
		now.startproc = 1;
#ifdef VAR_RANGES
		logval("startproc", ((int)now.startproc));
#endif
		;
S_386_0: /* 2 */
S_385_0: /* 2 */
S_378_0: /* 2 */
		if (!((((P1 *)this)->_9_pactr<8)))
			goto S_385_1;
S_379_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].latencycount = now.packet_status_g[ Index(((P1 *)this)->_9_pactr, 8) ].latencycount_g;
#ifdef VAR_RANGES
		logval("packet_status[controller:pactr].latencycount", packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].latencycount);
#endif
		;
S_380_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].start_latencycount = ((int)now.packet_status_g[ Index(((P1 *)this)->_9_pactr, 8) ].start_latencycount_g);
#ifdef VAR_RANGES
		logval("packet_status[controller:pactr].start_latencycount", ((int)packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].start_latencycount));
#endif
		;
S_381_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].stop_latencycount = ((int)now.packet_status_g[ Index(((P1 *)this)->_9_pactr, 8) ].stop_latencycount_g);
#ifdef VAR_RANGES
		logval("packet_status[controller:pactr].stop_latencycount", ((int)packet_status[ Index(((P1 *)this)->_9_pactr, 8) ].stop_latencycount));
#endif
		;
S_382_0: /* 2 */
		((P1 *)this)->_9_pactr = (((P1 *)this)->_9_pactr+1);
#ifdef VAR_RANGES
		logval("controller:pactr", ((P1 *)this)->_9_pactr);
#endif
		;
		goto S_386_0; /* ';' */
S_385_1: /* 3 */
S_383_0: /* 2 */
		/* else */;
S_384_0: /* 2 */
		goto S_405_0;	/* 'goto' */
S_385_2: /* 3 */
		Uerror("blocking sel in d_step (nr.3, near line 699)");
S_387_0: /* 2 */
		goto S_405_0;	/* 'break' */
S_406_0: /* 2 */
S_405_0: /* 2 */
S_388_0: /* 2 */
		if (!((((P1 *)this)->_9_lactr<8)))
			goto S_405_1;
S_394_0: /* 2 */
S_389_0: /* 2 */
		if (!((((int)packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].stop_latencycount)==1)))
			goto S_394_1;
S_390_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].stop_latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[controller:lactr].stop_latencycount", ((int)packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].stop_latencycount));
#endif
		;
S_391_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[controller:lactr].latencycount", packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].latencycount);
#endif
		;
		goto S_395_0;
S_394_1: /* 3 */
S_392_0: /* 2 */
		/* else */;
S_393_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_395_0;
S_394_2: /* 3 */
		Uerror("blocking sel in d_step (nr.4, near line 711)");
S_395_0: /* 2 */
S_400_0: /* 2 */
S_396_0: /* 2 */
		if (!((((((int)packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].start_latencycount)==1)&&(((int)packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].packet_send)==1))&&(((int)packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].packet_receive)==0))))
			goto S_400_1;
S_397_0: /* 2 */
		packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].latencycount = (packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].latencycount+1);
#ifdef VAR_RANGES
		logval("packet_status[controller:lactr].latencycount", packet_status[ Index(((P1 *)this)->_9_lactr, 8) ].latencycount);
#endif
		;
		goto S_401_0;
S_400_1: /* 3 */
S_398_0: /* 2 */
		/* else */;
S_399_0: /* 2 */
		if (!(1))
			Uerror("block in d_step seq");
		goto S_401_0;
S_400_2: /* 3 */
		Uerror("blocking sel in d_step (nr.5, near line 718)");
S_401_0: /* 2 */
S_402_0: /* 2 */
		((P1 *)this)->_9_lactr = (((P1 *)this)->_9_lactr+1);
#ifdef VAR_RANGES
		logval("controller:lactr", ((P1 *)this)->_9_lactr);
#endif
		;
		goto S_406_0; /* ';' */
S_405_1: /* 3 */
S_403_0: /* 2 */
		/* else */;
S_404_0: /* 2 */
		goto S_415_0;	/* 'goto' */
S_405_2: /* 3 */
		Uerror("blocking sel in d_step (nr.6, near line 709)");
S_407_0: /* 2 */
		goto S_415_0;	/* 'break' */
S_416_0: /* 2 */
S_415_0: /* 2 */
S_408_0: /* 2 */
		if (!((((P1 *)this)->_9_updtpktctr<8)))
			goto S_415_1;
S_409_0: /* 2 */
		now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].latencycount_g = packet_status[ Index(((P1 *)this)->_9_updtpktctr, 8) ].latencycount;
#ifdef VAR_RANGES
		logval("packet_status_g[controller:updtpktctr].latencycount_g", now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].latencycount_g);
#endif
		;
S_410_0: /* 2 */
		now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].start_latencycount_g = ((int)packet_status[ Index(((P1 *)this)->_9_updtpktctr, 8) ].start_latencycount);
#ifdef VAR_RANGES
		logval("packet_status_g[controller:updtpktctr].start_latencycount_g", ((int)now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].start_latencycount_g));
#endif
		;
S_411_0: /* 2 */
		now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].stop_latencycount_g = ((int)packet_status[ Index(((P1 *)this)->_9_updtpktctr, 8) ].stop_latencycount);
#ifdef VAR_RANGES
		logval("packet_status_g[controller:updtpktctr].stop_latencycount_g", ((int)now.packet_status_g[ Index(((P1 *)this)->_9_updtpktctr, 8) ].stop_latencycount_g));
#endif
		;
S_412_0: /* 2 */
		((P1 *)this)->_9_updtpktctr = (((P1 *)this)->_9_updtpktctr+1);
#ifdef VAR_RANGES
		logval("controller:updtpktctr", ((P1 *)this)->_9_updtpktctr);
#endif
		;
		goto S_416_0; /* ';' */
S_415_1: /* 3 */
S_413_0: /* 2 */
		/* else */;
S_414_0: /* 2 */
		goto S_446_0;	/* 'goto' */
S_415_2: /* 3 */
		Uerror("blocking sel in d_step (nr.7, near line 729)");
S_417_0: /* 2 */
		goto S_446_0;	/* 'break' */
S_446_0: /* 2 */
S_418_0: /* 2 */
		if (!((((int)((P1 *)this)->_9_timerctr[0])<2)))
			goto S_446_1;
S_429_0: /* 2 */
S_428_0: /* 2 */
S_419_0: /* 2 */
		if (!((((P1 *)this)->_9_tctr0<8)))
			goto S_428_1;
S_423_0: /* 2 */
S_420_0: /* 2 */
		if (!((((int)packet_list[ Index(((P1 *)this)->_9_tctr0, 8) ].timerref)==2)))
			goto S_423_1;
S_421_0: /* 2 */
		now.injectpacket[ Index(((P1 *)this)->_9_tctr0, 8) ] = 0;
#ifdef VAR_RANGES
		logval("injectpacket[controller:tctr0]", ((int)now.injectpacket[ Index(((P1 *)this)->_9_tctr0, 8) ]));
#endif
		;
		goto S_424_0;
S_423_1: /* 3 */
S_422_0: /* 2 */
		if (!(1))
			goto S_423_2;
		goto S_424_0;
S_423_2: /* 3 */
		Uerror("blocking sel in d_step (nr.8, near line 744)");
S_424_0: /* 2 */
S_425_0: /* 2 */
		((P1 *)this)->_9_tctr0 = (((P1 *)this)->_9_tctr0+1);
#ifdef VAR_RANGES
		logval("controller:tctr0", ((P1 *)this)->_9_tctr0);
#endif
		;
		goto S_429_0; /* ';' */
S_428_1: /* 3 */
S_426_0: /* 2 */
		/* else */;
S_427_0: /* 2 */
		goto S_431_0;	/* 'goto' */
S_428_2: /* 3 */
		Uerror("blocking sel in d_step (nr.9, near line 742)");
S_430_0: /* 2 */
		goto S_431_0;	/* 'break' */
S_431_0: /* 2 */
		((P1 *)this)->_9_timerctr[0] = (((int)((P1 *)this)->_9_timerctr[0])+1);
#ifdef VAR_RANGES
		logval("controller:timerctr[0]", ((int)((P1 *)this)->_9_timerctr[0]));
#endif
		;
		goto S_447_0;
S_446_1: /* 3 */
S_432_0: /* 2 */
		if (!((((int)((P1 *)this)->_9_timerctr[0])==2)))
			goto S_446_2;
S_443_0: /* 2 */
S_442_0: /* 2 */
S_433_0: /* 2 */
		if (!((((P1 *)this)->_9_tctr0<8)))
			goto S_442_1;
S_437_0: /* 2 */
S_434_0: /* 2 */
		if (!((((int)packet_list[ Index(((P1 *)this)->_9_tctr0, 8) ].timerref)==2)))
			goto S_437_1;
S_435_0: /* 2 */
		now.injectpacket[ Index(((P1 *)this)->_9_tctr0, 8) ] = 1;
#ifdef VAR_RANGES
		logval("injectpacket[controller:tctr0]", ((int)now.injectpacket[ Index(((P1 *)this)->_9_tctr0, 8) ]));
#endif
		;
		goto S_438_0;
S_437_1: /* 3 */
S_436_0: /* 2 */
		if (!(1))
			goto S_437_2;
		goto S_438_0;
S_437_2: /* 3 */
		Uerror("blocking sel in d_step (nr.10, near line 758)");
S_438_0: /* 2 */
S_439_0: /* 2 */
		((P1 *)this)->_9_tctr0 = (((P1 *)this)->_9_tctr0+1);
#ifdef VAR_RANGES
		logval("controller:tctr0", ((P1 *)this)->_9_tctr0);
#endif
		;
		goto S_443_0; /* ';' */
S_442_1: /* 3 */
S_440_0: /* 2 */
		/* else */;
S_441_0: /* 2 */
		goto S_445_0;	/* 'goto' */
S_442_2: /* 3 */
		Uerror("blocking sel in d_step (nr.11, near line 756)");
S_444_0: /* 2 */
		goto S_445_0;	/* 'break' */
S_445_0: /* 2 */
		((P1 *)this)->_9_timerctr[0] = 0;
#ifdef VAR_RANGES
		logval("controller:timerctr[0]", ((int)((P1 *)this)->_9_timerctr[0]));
#endif
		;
		goto S_447_0;
S_446_2: /* 3 */
		Uerror("blocking sel in d_step (nr.12, near line 740)");
S_447_0: /* 2 */
S_476_0: /* 2 */
S_448_0: /* 2 */
		if (!((((int)((P1 *)this)->_9_timerctr[1])<5)))
			goto S_476_1;
S_459_0: /* 2 */
S_458_0: /* 2 */
S_449_0: /* 2 */
		if (!((((P1 *)this)->_9_tctr1<8)))
			goto S_458_1;
S_453_0: /* 2 */
S_450_0: /* 2 */
		if (!((((int)packet_list[ Index(((P1 *)this)->_9_tctr1, 8) ].timerref)==5)))
			goto S_453_1;
S_451_0: /* 2 */
		now.injectpacket[ Index(((P1 *)this)->_9_tctr1, 8) ] = 0;
#ifdef VAR_RANGES
		logval("injectpacket[controller:tctr1]", ((int)now.injectpacket[ Index(((P1 *)this)->_9_tctr1, 8) ]));
#endif
		;
		goto S_454_0;
S_453_1: /* 3 */
S_452_0: /* 2 */
		if (!(1))
			goto S_453_2;
		goto S_454_0;
S_453_2: /* 3 */
		Uerror("blocking sel in d_step (nr.13, near line 775)");
S_454_0: /* 2 */
S_455_0: /* 2 */
		((P1 *)this)->_9_tctr1 = (((P1 *)this)->_9_tctr1+1);
#ifdef VAR_RANGES
		logval("controller:tctr1", ((P1 *)this)->_9_tctr1);
#endif
		;
		goto S_459_0; /* ';' */
S_458_1: /* 3 */
S_456_0: /* 2 */
		/* else */;
S_457_0: /* 2 */
		goto S_461_0;	/* 'goto' */
S_458_2: /* 3 */
		Uerror("blocking sel in d_step (nr.14, near line 773)");
S_460_0: /* 2 */
		goto S_461_0;	/* 'break' */
S_461_0: /* 2 */
		((P1 *)this)->_9_timerctr[1] = (((int)((P1 *)this)->_9_timerctr[1])+1);
#ifdef VAR_RANGES
		logval("controller:timerctr[1]", ((int)((P1 *)this)->_9_timerctr[1]));
#endif
		;
		goto S_477_0;
S_476_1: /* 3 */
S_462_0: /* 2 */
		if (!((((int)((P1 *)this)->_9_timerctr[1])==5)))
			goto S_476_2;
S_473_0: /* 2 */
S_472_0: /* 2 */
S_463_0: /* 2 */
		if (!((((P1 *)this)->_9_tctr1<8)))
			goto S_472_1;
S_467_0: /* 2 */
S_464_0: /* 2 */
		if (!((((int)packet_list[ Index(((P1 *)this)->_9_tctr1, 8) ].timerref)==5)))
			goto S_467_1;
S_465_0: /* 2 */
		now.injectpacket[ Index(((P1 *)this)->_9_tctr1, 8) ] = 1;
#ifdef VAR_RANGES
		logval("injectpacket[controller:tctr1]", ((int)now.injectpacket[ Index(((P1 *)this)->_9_tctr1, 8) ]));
#endif
		;
		goto S_468_0;
S_467_1: /* 3 */
S_466_0: /* 2 */
		if (!(1))
			goto S_467_2;
		goto S_468_0;
S_467_2: /* 3 */
		Uerror("blocking sel in d_step (nr.15, near line 789)");
S_468_0: /* 2 */
S_469_0: /* 2 */
		((P1 *)this)->_9_tctr1 = (((P1 *)this)->_9_tctr1+1);
#ifdef VAR_RANGES
		logval("controller:tctr1", ((P1 *)this)->_9_tctr1);
#endif
		;
		goto S_473_0; /* ';' */
S_472_1: /* 3 */
S_470_0: /* 2 */
		/* else */;
S_471_0: /* 2 */
		goto S_475_0;	/* 'goto' */
S_472_2: /* 3 */
		Uerror("blocking sel in d_step (nr.16, near line 787)");
S_474_0: /* 2 */
		goto S_475_0;	/* 'break' */
S_475_0: /* 2 */
		((P1 *)this)->_9_timerctr[1] = 0;
#ifdef VAR_RANGES
		logval("controller:timerctr[1]", ((int)((P1 *)this)->_9_timerctr[1]));
#endif
		;
		goto S_477_0;
S_476_2: /* 3 */
		Uerror("blocking sel in d_step (nr.17, near line 770)");
S_477_0: /* 2 */
		goto S_480_0;
S_479_1: /* 3 */
S_478_0: /* 2 */
		if (!(1))
			goto S_479_2;
		goto S_480_0;
S_479_2: /* 3 */
		Uerror("blocking sel in d_step (nr.18, near line 694)");
S_480_0: /* 2 */
		goto S_483_0;
S_483_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 12: /* STATE 117 - noc6.txt:814 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][117] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC router_node */
	case 13: /* STATE 1 - noc6.txt:200 - [((startproc==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.startproc)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 365 - noc6.txt:202 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[0][365] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;
S_001_0: /* 2 */
		now.startproc = 0;
#ifdef VAR_RANGES
		logval("startproc", ((int)now.startproc));
#endif
		;
S_002_0: /* 2 */
		now.loop1ctr = 0;
#ifdef VAR_RANGES
		logval("loop1ctr", ((int)now.loop1ctr));
#endif
		;
S_003_0: /* 2 */
		now.loop2ctr = 0;
#ifdef VAR_RANGES
		logval("loop2ctr", ((int)now.loop2ctr));
#endif
		;
S_004_0: /* 2 */
		now.loop3ctr = 0;
#ifdef VAR_RANGES
		logval("loop3ctr", ((int)now.loop3ctr));
#endif
		;
S_005_0: /* 2 */
		now.loop4ctr = 0;
#ifdef VAR_RANGES
		logval("loop4ctr", ((int)now.loop4ctr));
#endif
		;
S_006_0: /* 2 */
		now.loop5ctr = 0;
#ifdef VAR_RANGES
		logval("loop5ctr", ((int)now.loop5ctr));
#endif
		;
S_007_0: /* 2 */
		now.loop6ctr = 0;
#ifdef VAR_RANGES
		logval("loop6ctr", ((int)now.loop6ctr));
#endif
		;
S_008_0: /* 2 */
		now.loop7ctr = 0;
#ifdef VAR_RANGES
		logval("loop7ctr", ((int)now.loop7ctr));
#endif
		;
S_009_0: /* 2 */
		((P0 *)this)->_8_pectr = 0;
#ifdef VAR_RANGES
		logval("router_node:pectr", ((int)((P0 *)this)->_8_pectr));
#endif
		;
S_010_0: /* 2 */
		((P0 *)this)->_8_pactr = 0;
#ifdef VAR_RANGES
		logval("router_node:pactr", ((P0 *)this)->_8_pactr);
#endif
		;
S_011_0: /* 2 */
		((P0 *)this)->_8_swctr = 0;
#ifdef VAR_RANGES
		logval("router_node:swctr", ((int)((P0 *)this)->_8_swctr));
#endif
		;
S_012_0: /* 2 */
		((P0 *)this)->_8_arbctr = 0;
#ifdef VAR_RANGES
		logval("router_node:arbctr", ((int)((P0 *)this)->_8_arbctr));
#endif
		;
S_013_0: /* 2 */
		((P0 *)this)->_8_topologyctr = 0;
#ifdef VAR_RANGES
		logval("router_node:topologyctr", ((int)((P0 *)this)->_8_topologyctr));
#endif
		;
S_014_0: /* 2 */
		((P0 *)this)->_8_updtctr = 0;
#ifdef VAR_RANGES
		logval("router_node:updtctr", ((int)((P0 *)this)->_8_updtctr));
#endif
		;
S_015_0: /* 2 */
		((P0 *)this)->_8_updtpktctr = 0;
#ifdef VAR_RANGES
		logval("router_node:updtpktctr", ((P0 *)this)->_8_updtpktctr);
#endif
		;
S_044_0: /* 2 */
S_043_0: /* 2 */
S_016_0: /* 2 */
		if (!((((int)now.loop1ctr)<6)))
			goto S_043_1;
S_037_0: /* 2 */
S_036_0: /* 2 */
S_017_0: /* 2 */
		if (!((((int)((P0 *)this)->_8_pectr)<5)))
			goto S_036_1;
S_018_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_pectr, 5) ] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].inp_status_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].inp_status_h[router_node:pectr]", ((int)router[ Index(((int)now.loop1ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_pectr), 5) ]));
#endif
		;
S_019_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].output_status_h[ Index(((P0 *)this)->_8_pectr, 5) ] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].output_status_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].output_status_h[router_node:pectr]", ((int)router[ Index(((int)now.loop1ctr), 6) ].output_status_h[ Index(((int)((P0 *)this)->_8_pectr), 5) ]));
#endif
		;
S_020_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_pectr, 5) ] = now.router_id[ Index(((int)now.loop1ctr), 6) ].readbuff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop1ctr].readbuff_h[router_node:pectr]", router[ Index(((int)now.loop1ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_pectr), 5) ]);
#endif
		;
S_021_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].writebuff_h[ Index(((P0 *)this)->_8_pectr, 5) ] = now.router_id[ Index(((int)now.loop1ctr), 6) ].writebuff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop1ctr].writebuff_h[router_node:pectr]", router[ Index(((int)now.loop1ctr), 6) ].writebuff_h[ Index(((int)((P0 *)this)->_8_pectr), 5) ]);
#endif
		;
S_022_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].req[0] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req_g[0]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].req[0]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req[0]));
#endif
		;
S_023_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].req[2] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req_g[2]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].req[2]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req[2]));
#endif
		;
S_024_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].req[3] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req_g[3]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].req[3]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req[3]));
#endif
		;
S_025_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].req[1] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req_g[1]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].req[1]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req[1]));
#endif
		;
S_026_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].req[4] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req_g[4]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].req[4]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].req[4]));
#endif
		;
S_027_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].ack[0] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack_g[0]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].ack[0]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack[0]));
#endif
		;
S_028_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].ack[2] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack_g[2]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].ack[2]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack[2]));
#endif
		;
S_029_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].ack[3] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack_g[3]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].ack[3]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack[3]));
#endif
		;
S_030_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].ack[1] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack_g[1]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].ack[1]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack[1]));
#endif
		;
S_031_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_pectr, 5) ].ack[4] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack_g[4]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arb_buff[router_node:pectr].ack[4]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_pectr), 5) ].ack[4]));
#endif
		;
S_032_0: /* 2 */
		router[ Index(now.loop1ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_pectr, 5) ] = ((int)now.router_id[ Index(((int)now.loop1ctr), 6) ].arbitertoken_g[ Index(((int)((P0 *)this)->_8_pectr), 5) ]);
#ifdef VAR_RANGES
		logval("router[loop1ctr].arbitertoken[router_node:pectr]", ((int)router[ Index(((int)now.loop1ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_pectr), 5) ]));
#endif
		;
S_033_0: /* 2 */
		((P0 *)this)->_8_pectr = (((int)((P0 *)this)->_8_pectr)+1);
#ifdef VAR_RANGES
		logval("router_node:pectr", ((int)((P0 *)this)->_8_pectr));
#endif
		;
		goto S_037_0; /* ';' */
S_036_1: /* 3 */
S_034_0: /* 2 */
		/* else */;
S_035_0: /* 2 */
		goto S_039_0;	/* 'goto' */
S_036_2: /* 3 */
		Uerror("blocking sel in d_step (nr.19, near line 228)");
S_038_0: /* 2 */
		goto S_039_0;	/* 'break' */
S_039_0: /* 2 */
		((P0 *)this)->_8_pectr = 0;
#ifdef VAR_RANGES
		logval("router_node:pectr", ((int)((P0 *)this)->_8_pectr));
#endif
		;
S_040_0: /* 2 */
		now.loop1ctr = (((int)now.loop1ctr)+1);
#ifdef VAR_RANGES
		logval("loop1ctr", ((int)now.loop1ctr));
#endif
		;
		goto S_044_0; /* ';' */
S_043_1: /* 3 */
S_041_0: /* 2 */
		/* else */;
S_042_0: /* 2 */
		goto S_058_0;	/* 'goto' */
S_043_2: /* 3 */
		Uerror("blocking sel in d_step (nr.20, near line 226)");
S_045_0: /* 2 */
		goto S_058_0;	/* 'break' */
S_059_0: /* 2 */
S_058_0: /* 2 */
S_046_0: /* 2 */
		if (!((((P0 *)this)->_8_pactr<8)))
			goto S_058_1;
S_047_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].latencycount = now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].latencycount_g;
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].latencycount", packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].latencycount);
#endif
		;
S_048_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].txctr = now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].txctr_g;
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].txctr", packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].txctr);
#endif
		;
S_049_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].rcvctr = now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].rcvctr_g;
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].rcvctr", packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].rcvctr);
#endif
		;
S_050_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].packet_send = ((int)now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].packet_send_g);
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].packet_send", ((int)packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].packet_send));
#endif
		;
S_051_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].packet_receive = ((int)now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].packet_receive_g);
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].packet_receive", ((int)packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].packet_receive));
#endif
		;
S_052_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].maxlatency = now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].maxlatency_g;
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].maxlatency", packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].maxlatency);
#endif
		;
S_053_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].start_latencycount = ((int)now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].start_latencycount_g);
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].start_latencycount", ((int)packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].start_latencycount));
#endif
		;
S_054_0: /* 2 */
		packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].stop_latencycount = ((int)now.packet_status_g[ Index(((P0 *)this)->_8_pactr, 8) ].stop_latencycount_g);
#ifdef VAR_RANGES
		logval("packet_status[router_node:pactr].stop_latencycount", ((int)packet_status[ Index(((P0 *)this)->_8_pactr, 8) ].stop_latencycount));
#endif
		;
S_055_0: /* 2 */
		((P0 *)this)->_8_pactr = (((P0 *)this)->_8_pactr+1);
#ifdef VAR_RANGES
		logval("router_node:pactr", ((P0 *)this)->_8_pactr);
#endif
		;
		goto S_059_0; /* ';' */
S_058_1: /* 3 */
S_056_0: /* 2 */
		/* else */;
S_057_0: /* 2 */
		goto S_089_0;	/* 'goto' */
S_058_2: /* 3 */
		Uerror("blocking sel in d_step (nr.21, near line 256)");
S_060_0: /* 2 */
		goto S_089_0;	/* 'break' */
S_090_0: /* 2 */
S_089_0: /* 2 */
S_061_0: /* 2 */
		if (!((((int)now.loop2ctr)<6)))
			goto S_089_1;
S_084_0: /* 2 */
S_062_0: /* 2 */
		if (!(((((((int)router[ Index(((int)now.loop2ctr), 6) ].inp_status_h[0])==0)&&(router[ Index(((int)now.loop2ctr), 6) ].packet_base_index!=99))&&(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0]==99))&&(((int)now.injectpacket[ Index(router[ Index(((int)now.loop2ctr), 6) ].packet_base_index, 8) ])==1))))
			goto S_084_1;
S_063_0: /* 2 */
		router[ Index(now.loop2ctr, 6) ].readbuff_h[0] = router[ Index(((int)now.loop2ctr), 6) ].packet_base_index;
#ifdef VAR_RANGES
		logval("router[loop2ctr].readbuff_h[0]", router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0]);
#endif
		;
S_064_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].hopcount = 0;
#ifdef VAR_RANGES
		logval("packet_list[router[loop2ctr].readbuff_h[0]].hopcount", packet_list[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].hopcount);
#endif
		;
S_065_0: /* 2 */
		router[ Index(now.loop2ctr, 6) ].inp_status_h[0] = 1;
#ifdef VAR_RANGES
		logval("router[loop2ctr].inp_status_h[0]", ((int)router[ Index(((int)now.loop2ctr), 6) ].inp_status_h[0]));
#endif
		;
S_066_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].txctr = (packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].txctr+1);
#ifdef VAR_RANGES
		logval("packet_status[router[loop2ctr].readbuff_h[0]].txctr", packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].txctr);
#endif
		;
S_067_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].packet_send = 1;
#ifdef VAR_RANGES
		logval("packet_status[router[loop2ctr].readbuff_h[0]].packet_send", ((int)packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].packet_send));
#endif
		;
S_068_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].start_latencycount = 1;
#ifdef VAR_RANGES
		logval("packet_status[router[loop2ctr].readbuff_h[0]].start_latencycount", ((int)packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].start_latencycount));
#endif
		;
S_069_0: /* 2 */
		now.injectpacket[ Index(router[ Index(now.loop2ctr, 6) ].packet_base_index, 8) ] = 0;
#ifdef VAR_RANGES
		logval("injectpacket[router[loop2ctr].packet_base_index]", ((int)now.injectpacket[ Index(router[ Index(((int)now.loop2ctr), 6) ].packet_base_index, 8) ]));
#endif
		;
S_074_0: /* 2 */
S_070_0: /* 2 */
		if (!((((int)packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].packet_receive)==0)))
			goto S_074_1;
S_071_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].stop_latencycount = 1;
#ifdef VAR_RANGES
		logval("packet_status[router[loop2ctr].readbuff_h[0]].stop_latencycount", ((int)packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].stop_latencycount));
#endif
		;
		goto S_075_0;
S_074_1: /* 3 */
S_072_0: /* 2 */
		/* else */;
S_073_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop2ctr, 6) ].readbuff_h[0], 8) ].packet_receive = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop2ctr].readbuff_h[0]].packet_receive", ((int)packet_status[ Index(router[ Index(((int)now.loop2ctr), 6) ].readbuff_h[0], 8) ].packet_receive));
#endif
		;
		goto S_075_0;
S_074_2: /* 3 */
		Uerror("blocking sel in d_step (nr.22, near line 288)");
S_075_0: /* 2 */
S_081_0: /* 2 */
S_076_0: /* 2 */
		if (!((router[ Index(((int)now.loop2ctr), 6) ].packet_base_index<router[ Index(((int)now.loop2ctr), 6) ].end_packet_index)))
			goto S_081_1;
S_077_0: /* 2 */
		router[ Index(now.loop2ctr, 6) ].packet_base_index = (router[ Index(((int)now.loop2ctr), 6) ].packet_base_index+1);
#ifdef VAR_RANGES
		logval("router[loop2ctr].packet_base_index", router[ Index(((int)now.loop2ctr), 6) ].packet_base_index);
#endif
		;
		goto S_082_0;
S_081_1: /* 3 */
S_078_0: /* 2 */
		if (!((router[ Index(((int)now.loop2ctr), 6) ].packet_base_index==router[ Index(((int)now.loop2ctr), 6) ].end_packet_index)))
			goto S_081_2;
S_079_0: /* 2 */
		router[ Index(now.loop2ctr, 6) ].packet_base_index = router[ Index(((int)now.loop2ctr), 6) ].start_packet_index;
#ifdef VAR_RANGES
		logval("router[loop2ctr].packet_base_index", router[ Index(((int)now.loop2ctr), 6) ].packet_base_index);
#endif
		;
		goto S_082_0;
S_081_2: /* 3 */
S_080_0: /* 2 */
		if (!(1))
			goto S_081_3;
		goto S_082_0;
S_081_3: /* 3 */
		Uerror("blocking sel in d_step (nr.23, near line 295)");
S_082_0: /* 2 */
		goto S_085_0;
S_084_1: /* 3 */
S_083_0: /* 2 */
		if (!(1))
			goto S_084_2;
		goto S_085_0;
S_084_2: /* 3 */
		Uerror("blocking sel in d_step (nr.24, near line 276)");
S_085_0: /* 2 */
S_086_0: /* 2 */
		now.loop2ctr = (((int)now.loop2ctr)+1);
#ifdef VAR_RANGES
		logval("loop2ctr", ((int)now.loop2ctr));
#endif
		;
		goto S_090_0; /* ';' */
S_089_1: /* 3 */
S_087_0: /* 2 */
		/* else */;
S_088_0: /* 2 */
		goto S_180_0;	/* 'goto' */
S_089_2: /* 3 */
		Uerror("blocking sel in d_step (nr.25, near line 273)");
S_091_0: /* 2 */
		goto S_180_0;	/* 'break' */
S_181_0: /* 2 */
S_180_0: /* 2 */
S_092_0: /* 2 */
		if (!((((int)now.loop3ctr)<6)))
			goto S_180_1;
S_174_0: /* 2 */
S_173_0: /* 2 */
S_093_0: /* 2 */
		if (!((((int)((P0 *)this)->_8_swctr)<5)))
			goto S_173_1;
S_168_0: /* 2 */
S_094_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]!=99))))
			goto S_168_1;
S_165_0: /* 2 */
S_095_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_x)>((int)router_id_x[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_165_1;
S_106_0: /* 2 */
S_096_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[2])==0)))
			goto S_106_1;
S_097_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[2] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[2]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[2]));
#endif
		;
		goto S_107_0;
S_106_1: /* 3 */
S_098_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[2])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[2]==99))))
			goto S_106_2;
S_099_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].writebuff_h[2] = router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop3ctr].writebuff_h[2]", router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[2]);
#endif
		;
S_100_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].output_status_h[2] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].output_status_h[2]", ((int)router[ Index(((int)now.loop3ctr), 6) ].output_status_h[2]));
#endif
		;
S_101_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ], 8) ].hopcount = (packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount+1);
#ifdef VAR_RANGES
		logval("packet_list[router[loop3ctr].readbuff_h[router_node:swctr]].hopcount", packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount);
#endif
		;
S_102_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop3ctr].readbuff_h[router_node:swctr]", router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]);
#endif
		;
S_103_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].inp_status_h[router_node:swctr]", ((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]));
#endif
		;
S_104_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[2] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[2]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[2]));
#endif
		;
		goto S_107_0;
S_106_2: /* 3 */
S_105_0: /* 2 */
		if (!(1))
			goto S_106_3;
		goto S_107_0;
S_106_3: /* 3 */
		Uerror("blocking sel in d_step (nr.26, near line 339)");
S_107_0: /* 2 */
		goto S_166_0;
S_165_1: /* 3 */
S_108_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_x)<((int)router_id_x[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_165_2;
S_119_0: /* 2 */
S_109_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[3])==0)))
			goto S_119_1;
S_110_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[3] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[3]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[3]));
#endif
		;
		goto S_120_0;
S_119_1: /* 3 */
S_111_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[3])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[3]==99))))
			goto S_119_2;
S_112_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].writebuff_h[3] = router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop3ctr].writebuff_h[3]", router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[3]);
#endif
		;
S_113_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].output_status_h[3] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].output_status_h[3]", ((int)router[ Index(((int)now.loop3ctr), 6) ].output_status_h[3]));
#endif
		;
S_114_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ], 8) ].hopcount = (packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount+1);
#ifdef VAR_RANGES
		logval("packet_list[router[loop3ctr].readbuff_h[router_node:swctr]].hopcount", packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount);
#endif
		;
S_115_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop3ctr].readbuff_h[router_node:swctr]", router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]);
#endif
		;
S_116_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].inp_status_h[router_node:swctr]", ((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]));
#endif
		;
S_117_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[3] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[3]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[3]));
#endif
		;
		goto S_120_0;
S_119_2: /* 3 */
S_118_0: /* 2 */
		if (!(1))
			goto S_119_3;
		goto S_120_0;
S_119_3: /* 3 */
		Uerror("blocking sel in d_step (nr.27, near line 354)");
S_120_0: /* 2 */
		goto S_166_0;
S_165_2: /* 3 */
S_121_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_x)==((int)router_id_x[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_165_3;
S_162_0: /* 2 */
S_122_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_y)<((int)router_id_y[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_162_1;
S_133_0: /* 2 */
S_123_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[4])==0)))
			goto S_133_1;
S_124_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[4] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[4]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[4]));
#endif
		;
		goto S_134_0;
S_133_1: /* 3 */
S_125_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[4])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[4]==99))))
			goto S_133_2;
S_126_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].writebuff_h[4] = router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop3ctr].writebuff_h[4]", router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[4]);
#endif
		;
S_127_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].output_status_h[4] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].output_status_h[4]", ((int)router[ Index(((int)now.loop3ctr), 6) ].output_status_h[4]));
#endif
		;
S_128_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ], 8) ].hopcount = (packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount+1);
#ifdef VAR_RANGES
		logval("packet_list[router[loop3ctr].readbuff_h[router_node:swctr]].hopcount", packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount);
#endif
		;
S_129_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop3ctr].readbuff_h[router_node:swctr]", router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]);
#endif
		;
S_130_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].inp_status_h[router_node:swctr]", ((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]));
#endif
		;
S_131_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[4] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[4]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[4]));
#endif
		;
		goto S_134_0;
S_133_2: /* 3 */
S_132_0: /* 2 */
		if (!(1))
			goto S_133_3;
		goto S_134_0;
S_133_3: /* 3 */
		Uerror("blocking sel in d_step (nr.28, near line 372)");
S_134_0: /* 2 */
		goto S_163_0;
S_162_1: /* 3 */
S_135_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_y)>((int)router_id_y[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_162_2;
S_146_0: /* 2 */
S_136_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[1])==0)))
			goto S_146_1;
S_137_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[1] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[1]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[1]));
#endif
		;
		goto S_147_0;
S_146_1: /* 3 */
S_138_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[1])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[1]==99))))
			goto S_146_2;
S_139_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].writebuff_h[1] = router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop3ctr].writebuff_h[1]", router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[1]);
#endif
		;
S_140_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].output_status_h[1] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].output_status_h[1]", ((int)router[ Index(((int)now.loop3ctr), 6) ].output_status_h[1]));
#endif
		;
S_141_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ], 8) ].hopcount = (packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount+1);
#ifdef VAR_RANGES
		logval("packet_list[router[loop3ctr].readbuff_h[router_node:swctr]].hopcount", packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount);
#endif
		;
S_142_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop3ctr].readbuff_h[router_node:swctr]", router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]);
#endif
		;
S_143_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].inp_status_h[router_node:swctr]", ((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]));
#endif
		;
S_144_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[1] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[1]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[1]));
#endif
		;
		goto S_147_0;
S_146_2: /* 3 */
S_145_0: /* 2 */
		if (!(1))
			goto S_146_3;
		goto S_147_0;
S_146_3: /* 3 */
		Uerror("blocking sel in d_step (nr.29, near line 387)");
S_147_0: /* 2 */
		goto S_163_0;
S_162_2: /* 3 */
S_148_0: /* 2 */
		if (!((((int)packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].dest_index_y)==((int)router_id_y[ Index(((int)now.loop3ctr), 6) ]))))
			goto S_162_3;
S_159_0: /* 2 */
S_149_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[0])==0)))
			goto S_159_1;
S_150_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[0] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[0]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[0]));
#endif
		;
		goto S_160_0;
S_159_1: /* 3 */
S_151_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].ack[0])==1)&&(router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[0]==99))))
			goto S_159_2;
S_152_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].writebuff_h[0] = router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ];
#ifdef VAR_RANGES
		logval("router[loop3ctr].writebuff_h[0]", router[ Index(((int)now.loop3ctr), 6) ].writebuff_h[0]);
#endif
		;
S_153_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].output_status_h[0] = 1;
#ifdef VAR_RANGES
		logval("router[loop3ctr].output_status_h[0]", ((int)router[ Index(((int)now.loop3ctr), 6) ].output_status_h[0]));
#endif
		;
S_154_0: /* 2 */
		packet_list[ Index(router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ], 8) ].hopcount = (packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount+1);
#ifdef VAR_RANGES
		logval("packet_list[router[loop3ctr].readbuff_h[router_node:swctr]].hopcount", packet_list[ Index(router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ], 8) ].hopcount);
#endif
		;
S_155_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].readbuff_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop3ctr].readbuff_h[router_node:swctr]", router[ Index(((int)now.loop3ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]);
#endif
		;
S_156_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].inp_status_h[ Index(((P0 *)this)->_8_swctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].inp_status_h[router_node:swctr]", ((int)router[ Index(((int)now.loop3ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_swctr), 5) ]));
#endif
		;
S_157_0: /* 2 */
		router[ Index(now.loop3ctr, 6) ].arb_buff[ Index(((P0 *)this)->_8_swctr, 5) ].req[0] = 0;
#ifdef VAR_RANGES
		logval("router[loop3ctr].arb_buff[router_node:swctr].req[0]", ((int)router[ Index(((int)now.loop3ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_swctr), 5) ].req[0]));
#endif
		;
		goto S_160_0;
S_159_2: /* 3 */
S_158_0: /* 2 */
		if (!(1))
			goto S_159_3;
		goto S_160_0;
S_159_3: /* 3 */
		Uerror("blocking sel in d_step (nr.30, near line 402)");
S_160_0: /* 2 */
		goto S_163_0;
S_162_3: /* 3 */
S_161_0: /* 2 */
		if (!(1))
			goto S_162_4;
		goto S_163_0;
S_162_4: /* 3 */
		Uerror("blocking sel in d_step (nr.31, near line 369)");
S_163_0: /* 2 */
		goto S_166_0;
S_165_3: /* 3 */
S_164_0: /* 2 */
		if (!(1))
			goto S_165_4;
		goto S_166_0;
S_165_4: /* 3 */
		Uerror("blocking sel in d_step (nr.32, near line 336)");
S_166_0: /* 2 */
		goto S_169_0;
S_168_1: /* 3 */
S_167_0: /* 2 */
		if (!(1))
			goto S_168_2;
		goto S_169_0;
S_168_2: /* 3 */
		Uerror("blocking sel in d_step (nr.33, near line 322)");
S_169_0: /* 2 */
S_170_0: /* 2 */
		((P0 *)this)->_8_swctr = (((int)((P0 *)this)->_8_swctr)+1);
#ifdef VAR_RANGES
		logval("router_node:swctr", ((int)((P0 *)this)->_8_swctr));
#endif
		;
		goto S_174_0; /* ';' */
S_173_1: /* 3 */
S_171_0: /* 2 */
		/* else */;
S_172_0: /* 2 */
		goto S_176_0;	/* 'goto' */
S_173_2: /* 3 */
		Uerror("blocking sel in d_step (nr.34, near line 318)");
S_175_0: /* 2 */
		goto S_176_0;	/* 'break' */
S_176_0: /* 2 */
		((P0 *)this)->_8_swctr = 0;
#ifdef VAR_RANGES
		logval("router_node:swctr", ((int)((P0 *)this)->_8_swctr));
#endif
		;
S_177_0: /* 2 */
		now.loop3ctr = (((int)now.loop3ctr)+1);
#ifdef VAR_RANGES
		logval("loop3ctr", ((int)now.loop3ctr));
#endif
		;
		goto S_181_0; /* ';' */
S_180_1: /* 3 */
S_178_0: /* 2 */
		/* else */;
S_179_0: /* 2 */
		goto S_263_0;	/* 'goto' */
S_180_2: /* 3 */
		Uerror("blocking sel in d_step (nr.35, near line 316)");
S_182_0: /* 2 */
		goto S_263_0;	/* 'break' */
S_264_0: /* 2 */
S_263_0: /* 2 */
S_183_0: /* 2 */
		if (!((((int)now.loop4ctr)<6)))
			goto S_263_1;
S_257_0: /* 2 */
S_256_0: /* 2 */
S_184_0: /* 2 */
		if (!((((int)((P0 *)this)->_8_arbctr)<5)))
			goto S_256_1;
S_203_0: /* 2 */
S_185_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==5))))
			goto S_203_1;
S_186_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[2].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[2].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_187_0: /* 2 */
		goto S_253_0;	/* 'goto' */
S_203_1: /* 3 */
S_188_0: /* 2 */
		if (!((((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==5))))
			goto S_203_2;
S_189_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[2].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[2].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_190_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 4;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_191_0: /* 2 */
		goto S_215_0;	/* 'goto' */
S_203_2: /* 3 */
S_192_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==4)))
			goto S_203_3;
S_193_0: /* 2 */
		goto S_215_0;	/* 'goto' */
		goto S_204_0;
S_203_3: /* 3 */
S_194_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==3)))
			goto S_203_4;
S_195_0: /* 2 */
		goto S_227_0;	/* 'goto' */
S_203_4: /* 3 */
S_196_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==2)))
			goto S_203_5;
S_197_0: /* 2 */
		goto S_239_0;	/* 'goto' */
S_203_5: /* 3 */
S_198_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)))
			goto S_203_6;
S_199_0: /* 2 */
		goto S_251_0;	/* 'goto' */
S_203_6: /* 3 */
S_200_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[2].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==5))))
			goto S_203_7;
S_201_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 4;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_202_0: /* 2 */
		goto S_215_0;	/* 'goto' */
		goto S_204_0;
S_203_7: /* 3 */
		Uerror("blocking sel in d_step (nr.36, near line 443)");
S_204_0: /* 2 */
S_215_0: /* 2 */
S_205_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==4))))
			goto S_215_1;
S_206_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[3].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[3].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_207_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_216_0;
S_215_1: /* 3 */
S_208_0: /* 2 */
		if (!((((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==4))))
			goto S_215_2;
S_209_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[3].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[3].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_210_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 3;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_211_0: /* 2 */
		goto S_227_0;	/* 'goto' */
		goto S_216_0;
S_215_2: /* 3 */
S_212_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[3].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==4))))
			goto S_215_3;
S_213_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 3;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_214_0: /* 2 */
		goto S_227_0;	/* 'goto' */
		goto S_216_0;
S_215_3: /* 3 */
		Uerror("blocking sel in d_step (nr.37, near line 471)");
S_216_0: /* 2 */
S_227_0: /* 2 */
S_217_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==3))))
			goto S_227_1;
S_218_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[1].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[1].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_219_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_228_0;
S_227_1: /* 3 */
S_220_0: /* 2 */
		if (!((((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==3))))
			goto S_227_2;
S_221_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[1].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[1].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_222_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 2;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_223_0: /* 2 */
		goto S_239_0;	/* 'goto' */
		goto S_228_0;
S_227_2: /* 3 */
S_224_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[1].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==3))))
			goto S_227_3;
S_225_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 2;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_226_0: /* 2 */
		goto S_239_0;	/* 'goto' */
		goto S_228_0;
S_227_3: /* 3 */
		Uerror("blocking sel in d_step (nr.38, near line 488)");
S_228_0: /* 2 */
S_239_0: /* 2 */
S_229_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==2))))
			goto S_239_1;
S_230_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[4].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[4].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_231_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_240_0;
S_239_1: /* 3 */
S_232_0: /* 2 */
		if (!((((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==2))))
			goto S_239_2;
S_233_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[4].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[4].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_234_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_235_0: /* 2 */
		goto S_251_0;	/* 'goto' */
		goto S_240_0;
S_239_2: /* 3 */
S_236_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[4].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==2))))
			goto S_239_3;
S_237_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_238_0: /* 2 */
		goto S_251_0;	/* 'goto' */
		goto S_240_0;
S_239_3: /* 3 */
		Uerror("blocking sel in d_step (nr.39, near line 506)");
S_240_0: /* 2 */
S_251_0: /* 2 */
S_241_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))))
			goto S_251_1;
S_242_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[0].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[0].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_243_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_252_0;
S_251_1: /* 3 */
S_244_0: /* 2 */
		if (!((((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))))
			goto S_251_2;
S_245_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arb_buff[0].ack[ Index(((P0 *)this)->_8_arbctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arb_buff[0].ack[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].ack[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_246_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 5;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_247_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_252_0;
S_251_2: /* 3 */
S_248_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop4ctr), 6) ].arb_buff[0].req[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==0)&&(((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ])==1))))
			goto S_251_3;
S_249_0: /* 2 */
		router[ Index(now.loop4ctr, 6) ].arbitertoken[ Index(((P0 *)this)->_8_arbctr, 5) ] = 5;
#ifdef VAR_RANGES
		logval("router[loop4ctr].arbitertoken[router_node:arbctr]", ((int)router[ Index(((int)now.loop4ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_arbctr), 5) ]));
#endif
		;
S_250_0: /* 2 */
		goto S_253_0;	/* 'goto' */
		goto S_252_0;
S_251_3: /* 3 */
		Uerror("blocking sel in d_step (nr.40, near line 525)");
S_252_0: /* 2 */
S_253_0: /* 2 */
		((P0 *)this)->_8_arbctr = (((int)((P0 *)this)->_8_arbctr)+1);
#ifdef VAR_RANGES
		logval("router_node:arbctr", ((int)((P0 *)this)->_8_arbctr));
#endif
		;
		goto S_257_0; /* ';' */
S_256_1: /* 3 */
S_254_0: /* 2 */
		/* else */;
S_255_0: /* 2 */
		goto S_259_0;	/* 'goto' */
S_256_2: /* 3 */
		Uerror("blocking sel in d_step (nr.41, near line 433)");
S_258_0: /* 2 */
		goto S_259_0;	/* 'break' */
S_259_0: /* 2 */
		((P0 *)this)->_8_arbctr = 0;
#ifdef VAR_RANGES
		logval("router_node:arbctr", ((int)((P0 *)this)->_8_arbctr));
#endif
		;
S_260_0: /* 2 */
		now.loop4ctr = (((int)now.loop4ctr)+1);
#ifdef VAR_RANGES
		logval("loop4ctr", ((int)now.loop4ctr));
#endif
		;
		goto S_264_0; /* ';' */
S_263_1: /* 3 */
S_261_0: /* 2 */
		/* else */;
S_262_0: /* 2 */
		goto S_289_0;	/* 'goto' */
S_263_2: /* 3 */
		Uerror("blocking sel in d_step (nr.42, near line 431)");
S_265_0: /* 2 */
		goto S_289_0;	/* 'break' */
S_290_0: /* 2 */
S_289_0: /* 2 */
S_266_0: /* 2 */
		if (!((((int)now.loop5ctr)<6)))
			goto S_289_1;
S_284_0: /* 2 */
S_267_0: /* 2 */
		if (!(((((int)router[ Index(((int)now.loop5ctr), 6) ].output_status_h[0])==1)&&(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0]!=99))))
			goto S_284_1;
S_268_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].rcvctr = (packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].rcvctr+1);
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].rcvctr", packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].rcvctr);
#endif
		;
S_269_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].packet_receive = 1;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].packet_receive", ((int)packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].packet_receive));
#endif
		;
S_270_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].packet_send = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].packet_send", ((int)packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].packet_send));
#endif
		;
S_279_0: /* 2 */
S_271_0: /* 2 */
		if (!((packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].maxlatency<packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].latencycount)))
			goto S_279_1;
S_272_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].maxlatency = packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].latencycount;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].maxlatency", packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].maxlatency);
#endif
		;
S_273_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].latencycount", packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].latencycount);
#endif
		;
S_274_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].start_latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].start_latencycount", ((int)packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].start_latencycount));
#endif
		;
S_275_0: /* 2 */
		/* c_code1 */
		{ 
                              printf("%d, %d \n", router[now.loop5ctr].writebuff_h[0], packet_status[router[now.loop5ctr].writebuff_h[0]].maxlatency);
                             }
;
		goto S_280_0;
S_279_1: /* 3 */
S_276_0: /* 2 */
		/* else */;
S_277_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].start_latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].start_latencycount", ((int)packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].start_latencycount));
#endif
		;
S_278_0: /* 2 */
		packet_status[ Index(router[ Index(now.loop5ctr, 6) ].writebuff_h[0], 8) ].latencycount = 0;
#ifdef VAR_RANGES
		logval("packet_status[router[loop5ctr].writebuff_h[0]].latencycount", packet_status[ Index(router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0], 8) ].latencycount);
#endif
		;
		goto S_280_0;
S_279_2: /* 3 */
		Uerror("blocking sel in d_step (nr.43, near line 567)");
S_280_0: /* 2 */
S_281_0: /* 2 */
		router[ Index(now.loop5ctr, 6) ].writebuff_h[0] = 99;
#ifdef VAR_RANGES
		logval("router[loop5ctr].writebuff_h[0]", router[ Index(((int)now.loop5ctr), 6) ].writebuff_h[0]);
#endif
		;
S_282_0: /* 2 */
		router[ Index(now.loop5ctr, 6) ].output_status_h[0] = 0;
#ifdef VAR_RANGES
		logval("router[loop5ctr].output_status_h[0]", ((int)router[ Index(((int)now.loop5ctr), 6) ].output_status_h[0]));
#endif
		;
		goto S_285_0;
S_284_1: /* 3 */
S_283_0: /* 2 */
		if (!(1))
			goto S_284_2;
		goto S_285_0;
S_284_2: /* 3 */
		Uerror("blocking sel in d_step (nr.44, near line 560)");
S_285_0: /* 2 */
S_286_0: /* 2 */
		now.loop5ctr = (((int)now.loop5ctr)+1);
#ifdef VAR_RANGES
		logval("loop5ctr", ((int)now.loop5ctr));
#endif
		;
		goto S_290_0; /* ';' */
S_289_1: /* 3 */
S_287_0: /* 2 */
		/* else */;
S_288_0: /* 2 */
		goto S_316_0;	/* 'goto' */
S_289_2: /* 3 */
		Uerror("blocking sel in d_step (nr.45, near line 557)");
S_291_0: /* 2 */
		goto S_316_0;	/* 'break' */
S_317_0: /* 2 */
S_316_0: /* 2 */
S_292_0: /* 2 */
		if (!((((int)now.loop6ctr)<6)))
			goto S_316_1;
S_310_0: /* 2 */
S_309_0: /* 2 */
S_293_0: /* 2 */
		if (!((((int)((P0 *)this)->_8_topologyctr)<5)))
			goto S_309_1;
S_304_0: /* 2 */
S_294_0: /* 2 */
		if (!((((int)router[ Index(((int)now.loop6ctr), 6) ].output_status_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ])==1)))
			goto S_304_1;
S_301_0: /* 2 */
S_295_0: /* 2 */
		if (!((((int)router[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_map_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 6) ].inp_status_h[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_port_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 5) ])!=1)))
			goto S_301_1;
S_296_0: /* 2 */
		router[ Index(router[ Index(now.loop6ctr, 6) ].input_output_connection_map_h[ Index(((P0 *)this)->_8_topologyctr, 5) ], 6) ].readbuff_h[ Index(router[ Index(now.loop6ctr, 6) ].input_output_connection_port_h[ Index(((P0 *)this)->_8_topologyctr, 5) ], 5) ] = router[ Index(((int)now.loop6ctr), 6) ].writebuff_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ];
#ifdef VAR_RANGES
		logval("router[router[loop6ctr].input_output_connection_map_h[router_node:topologyctr]].readbuff_h[router[loop6ctr].input_output_connection_port_h[router_node:topologyctr]]", router[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_map_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 6) ].readbuff_h[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_port_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 5) ]);
#endif
		;
S_297_0: /* 2 */
		router[ Index(router[ Index(now.loop6ctr, 6) ].input_output_connection_map_h[ Index(((P0 *)this)->_8_topologyctr, 5) ], 6) ].inp_status_h[ Index(router[ Index(now.loop6ctr, 6) ].input_output_connection_port_h[ Index(((P0 *)this)->_8_topologyctr, 5) ], 5) ] = 1;
#ifdef VAR_RANGES
		logval("router[router[loop6ctr].input_output_connection_map_h[router_node:topologyctr]].inp_status_h[router[loop6ctr].input_output_connection_port_h[router_node:topologyctr]]", ((int)router[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_map_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 6) ].inp_status_h[ Index(((int)router[ Index(((int)now.loop6ctr), 6) ].input_output_connection_port_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]), 5) ]));
#endif
		;
S_298_0: /* 2 */
		router[ Index(now.loop6ctr, 6) ].writebuff_h[ Index(((P0 *)this)->_8_topologyctr, 5) ] = 99;
#ifdef VAR_RANGES
		logval("router[loop6ctr].writebuff_h[router_node:topologyctr]", router[ Index(((int)now.loop6ctr), 6) ].writebuff_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]);
#endif
		;
S_299_0: /* 2 */
		router[ Index(now.loop6ctr, 6) ].output_status_h[ Index(((P0 *)this)->_8_topologyctr, 5) ] = 0;
#ifdef VAR_RANGES
		logval("router[loop6ctr].output_status_h[router_node:topologyctr]", ((int)router[ Index(((int)now.loop6ctr), 6) ].output_status_h[ Index(((int)((P0 *)this)->_8_topologyctr), 5) ]));
#endif
		;
		goto S_302_0;
S_301_1: /* 3 */
S_300_0: /* 2 */
		if (!(1))
			goto S_301_2;
		goto S_302_0;
S_301_2: /* 3 */
		Uerror("blocking sel in d_step (nr.46, near line 596)");
S_302_0: /* 2 */
		goto S_305_0;
S_304_1: /* 3 */
S_303_0: /* 2 */
		if (!(1))
			goto S_304_2;
		goto S_305_0;
S_304_2: /* 3 */
		Uerror("blocking sel in d_step (nr.47, near line 594)");
S_305_0: /* 2 */
S_306_0: /* 2 */
		((P0 *)this)->_8_topologyctr = (((int)((P0 *)this)->_8_topologyctr)+1);
#ifdef VAR_RANGES
		logval("router_node:topologyctr", ((int)((P0 *)this)->_8_topologyctr));
#endif
		;
		goto S_310_0; /* ';' */
S_309_1: /* 3 */
S_307_0: /* 2 */
		/* else */;
S_308_0: /* 2 */
		goto S_312_0;	/* 'goto' */
S_309_2: /* 3 */
		Uerror("blocking sel in d_step (nr.48, near line 592)");
S_311_0: /* 2 */
		goto S_312_0;	/* 'break' */
S_312_0: /* 2 */
		((P0 *)this)->_8_topologyctr = 0;
#ifdef VAR_RANGES
		logval("router_node:topologyctr", ((int)((P0 *)this)->_8_topologyctr));
#endif
		;
S_313_0: /* 2 */
		now.loop6ctr = (((int)now.loop6ctr)+1);
#ifdef VAR_RANGES
		logval("loop6ctr", ((int)now.loop6ctr));
#endif
		;
		goto S_317_0; /* ';' */
S_316_1: /* 3 */
S_314_0: /* 2 */
		/* else */;
S_315_0: /* 2 */
		goto S_346_0;	/* 'goto' */
S_316_2: /* 3 */
		Uerror("blocking sel in d_step (nr.49, near line 590)");
S_318_0: /* 2 */
		goto S_346_0;	/* 'break' */
S_347_0: /* 2 */
S_346_0: /* 2 */
S_319_0: /* 2 */
		if (!((((int)now.loop7ctr)<6)))
			goto S_346_1;
S_340_0: /* 2 */
S_339_0: /* 2 */
S_320_0: /* 2 */
		if (!((((int)((P0 *)this)->_8_updtctr)<5)))
			goto S_339_1;
S_321_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].inp_status_g[ Index(((P0 *)this)->_8_updtctr, 5) ] = ((int)router[ Index(((int)now.loop7ctr), 6) ].inp_status_h[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].inp_status_g[router_node:updtctr]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].inp_status_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]));
#endif
		;
S_322_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].output_status_g[ Index(((P0 *)this)->_8_updtctr, 5) ] = ((int)router[ Index(((int)now.loop7ctr), 6) ].output_status_h[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].output_status_g[router_node:updtctr]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].output_status_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]));
#endif
		;
S_323_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].readbuff_g[ Index(((P0 *)this)->_8_updtctr, 5) ] = router[ Index(((int)now.loop7ctr), 6) ].readbuff_h[ Index(((int)((P0 *)this)->_8_updtctr), 5) ];
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].readbuff_g[router_node:updtctr]", now.router_id[ Index(((int)now.loop7ctr), 6) ].readbuff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]);
#endif
		;
S_324_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].writebuff_g[ Index(((P0 *)this)->_8_updtctr, 5) ] = router[ Index(((int)now.loop7ctr), 6) ].writebuff_h[ Index(((int)((P0 *)this)->_8_updtctr), 5) ];
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].writebuff_g[router_node:updtctr]", now.router_id[ Index(((int)now.loop7ctr), 6) ].writebuff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]);
#endif
		;
S_325_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].req_g[0] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req[0]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].req_g[0]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req_g[0]));
#endif
		;
S_326_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].req_g[2] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req[2]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].req_g[2]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req_g[2]));
#endif
		;
S_327_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].req_g[3] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req[3]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].req_g[3]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req_g[3]));
#endif
		;
S_328_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].req_g[1] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req[1]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].req_g[1]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req_g[1]));
#endif
		;
S_329_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].req_g[4] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req[4]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].req_g[4]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].req_g[4]));
#endif
		;
S_330_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].ack_g[0] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack[0]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].ack_g[0]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack_g[0]));
#endif
		;
S_331_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].ack_g[2] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack[2]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].ack_g[2]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack_g[2]));
#endif
		;
S_332_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].ack_g[3] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack[3]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].ack_g[3]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack_g[3]));
#endif
		;
S_333_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].ack_g[1] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack[1]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].ack_g[1]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack_g[1]));
#endif
		;
S_334_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arb_buff_g[ Index(((P0 *)this)->_8_updtctr, 5) ].ack_g[4] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arb_buff[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack[4]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arb_buff_g[router_node:updtctr].ack_g[4]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arb_buff_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ].ack_g[4]));
#endif
		;
S_335_0: /* 2 */
		now.router_id[ Index(now.loop7ctr, 6) ].arbitertoken_g[ Index(((P0 *)this)->_8_updtctr, 5) ] = ((int)router[ Index(((int)now.loop7ctr), 6) ].arbitertoken[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]);
#ifdef VAR_RANGES
		logval("router_id[loop7ctr].arbitertoken_g[router_node:updtctr]", ((int)now.router_id[ Index(((int)now.loop7ctr), 6) ].arbitertoken_g[ Index(((int)((P0 *)this)->_8_updtctr), 5) ]));
#endif
		;
S_336_0: /* 2 */
		((P0 *)this)->_8_updtctr = (((int)((P0 *)this)->_8_updtctr)+1);
#ifdef VAR_RANGES
		logval("router_node:updtctr", ((int)((P0 *)this)->_8_updtctr));
#endif
		;
		goto S_340_0; /* ';' */
S_339_1: /* 3 */
S_337_0: /* 2 */
		/* else */;
S_338_0: /* 2 */
		goto S_342_0;	/* 'goto' */
S_339_2: /* 3 */
		Uerror("blocking sel in d_step (nr.50, near line 620)");
S_341_0: /* 2 */
		goto S_342_0;	/* 'break' */
S_342_0: /* 2 */
		((P0 *)this)->_8_updtctr = 0;
#ifdef VAR_RANGES
		logval("router_node:updtctr", ((int)((P0 *)this)->_8_updtctr));
#endif
		;
S_343_0: /* 2 */
		now.loop7ctr = (((int)now.loop7ctr)+1);
#ifdef VAR_RANGES
		logval("loop7ctr", ((int)now.loop7ctr));
#endif
		;
		goto S_347_0; /* ';' */
S_346_1: /* 3 */
S_344_0: /* 2 */
		/* else */;
S_345_0: /* 2 */
		goto S_361_0;	/* 'goto' */
S_346_2: /* 3 */
		Uerror("blocking sel in d_step (nr.51, near line 618)");
S_348_0: /* 2 */
		goto S_361_0;	/* 'break' */
S_362_0: /* 2 */
S_361_0: /* 2 */
S_349_0: /* 2 */
		if (!((((P0 *)this)->_8_updtpktctr<8)))
			goto S_361_1;
S_350_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].latencycount_g = packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].latencycount;
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].latencycount_g", now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].latencycount_g);
#endif
		;
S_351_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].txctr_g = packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].txctr;
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].txctr_g", now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].txctr_g);
#endif
		;
S_352_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].rcvctr_g = packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].rcvctr;
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].rcvctr_g", now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].rcvctr_g);
#endif
		;
S_353_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_send_g = ((int)packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_send);
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].packet_send_g", ((int)now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_send_g));
#endif
		;
S_354_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_receive_g = ((int)packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_receive);
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].packet_receive_g", ((int)now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].packet_receive_g));
#endif
		;
S_355_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].maxlatency_g = packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].maxlatency;
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].maxlatency_g", now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].maxlatency_g);
#endif
		;
S_356_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].start_latencycount_g = ((int)packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].start_latencycount);
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].start_latencycount_g", ((int)now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].start_latencycount_g));
#endif
		;
S_357_0: /* 2 */
		now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].stop_latencycount_g = ((int)packet_status[ Index(((P0 *)this)->_8_updtpktctr, 8) ].stop_latencycount);
#ifdef VAR_RANGES
		logval("packet_status_g[router_node:updtpktctr].stop_latencycount_g", ((int)now.packet_status_g[ Index(((P0 *)this)->_8_updtpktctr, 8) ].stop_latencycount_g));
#endif
		;
S_358_0: /* 2 */
		((P0 *)this)->_8_updtpktctr = (((P0 *)this)->_8_updtpktctr+1);
#ifdef VAR_RANGES
		logval("router_node:updtpktctr", ((P0 *)this)->_8_updtpktctr);
#endif
		;
		goto S_362_0; /* ';' */
S_361_1: /* 3 */
S_359_0: /* 2 */
		/* else */;
S_360_0: /* 2 */
		goto S_363_0;	/* 'goto' */
S_361_2: /* 3 */
		Uerror("blocking sel in d_step (nr.52, near line 647)");
S_363_0: /* 2 */
		goto S_365_0;	/* 'break' */
S_366_0: /* 1 */
S_365_0:	/* break-dest */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 15: /* STATE 369 - noc6.txt:667 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][369] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

