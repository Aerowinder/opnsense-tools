interface igc0 {
    send ia-na 0;
    send ia-pd 0;
    send ia-pd 1;
    send ia-pd 2;
    send ia-pd 3;
    send ia-pd 4;
    send ia-pd 5;
    # send ia-pd 6;
    # send ia-pd 7;
    request domain-name-servers;
    request domain-name;
    script "/usr/local/bin/att-ipv6.sh";
};
id-assoc na 0 { };
id-assoc pd 0 {
    prefix-interface igc1_vlan10 {
        sla-id 0;
        sla-len 0;
    };
};
id-assoc pd 1 {
    prefix-interface igc1_vlan20 {
        sla-id 0;
        sla-len 0;
    };
};
id-assoc pd 2 {
    prefix-interface igc1_vlan21 {
        sla-id 0;
        sla-len 0;
    };
};
id-assoc pd 3 {
    prefix-interface igc1_vlan22 {
        sla-id 0;
        sla-len 0;
    };
};
id-assoc pd 4 {
    prefix-interface igc1_vlan30 {
        sla-id 0;
        sla-len 0;
    };
};
id-assoc pd 5 {
    prefix-interface igc1_vlan31 {
        sla-id 0;
        sla-len 0;
    };
};
# id-assoc pd 6 { };
# id-assoc pd 7 { };
