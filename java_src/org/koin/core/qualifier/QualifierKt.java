package org.koin.core.qualifier;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Qualifier.kt */
/* loaded from: classes4.dex */
public final class QualifierKt {
    public static final StringQualifier named(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new StringQualifier(name);
    }

    /* renamed from: _q */
    public static final StringQualifier m78_q(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new StringQualifier(name);
    }
}
