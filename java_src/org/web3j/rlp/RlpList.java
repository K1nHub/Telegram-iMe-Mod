package org.web3j.rlp;

import java.util.List;
/* loaded from: classes6.dex */
public class RlpList implements RlpType {
    private final List<RlpType> values;

    public RlpList(List<RlpType> list) {
        this.values = list;
    }

    public List<RlpType> getValues() {
        return this.values;
    }
}
