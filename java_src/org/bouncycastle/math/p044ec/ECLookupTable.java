package org.bouncycastle.math.p044ec;
/* renamed from: org.bouncycastle.math.ec.ECLookupTable */
/* loaded from: classes4.dex */
public interface ECLookupTable {
    int getSize();

    ECPoint lookup(int i);
}
