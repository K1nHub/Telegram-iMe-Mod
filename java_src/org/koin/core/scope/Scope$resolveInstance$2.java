package org.koin.core.scope;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
final class Scope$resolveInstance$2 extends Lambda implements Function0<String> {
    public static final Scope$resolveInstance$2 INSTANCE = new Scope$resolveInstance$2();

    Scope$resolveInstance$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return "| remove parameters from stack";
    }
}
