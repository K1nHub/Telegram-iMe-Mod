package org.bouncycastle.math.p043ec.endo;

import java.math.BigInteger;
/* renamed from: org.bouncycastle.math.ec.endo.GLVEndomorphism */
/* loaded from: classes4.dex */
public interface GLVEndomorphism extends ECEndomorphism {
    BigInteger[] decomposeScalar(BigInteger bigInteger);
}
