package org.bouncycastle.math.p044ec.endo;

import org.bouncycastle.math.p044ec.ECPointMap;
/* renamed from: org.bouncycastle.math.ec.endo.ECEndomorphism */
/* loaded from: classes4.dex */
public interface ECEndomorphism {
    ECPointMap getPointMap();

    boolean hasEfficientPointMap();
}
