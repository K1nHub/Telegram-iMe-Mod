package org.koin.core.context;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
/* compiled from: KoinContext.kt */
/* loaded from: classes4.dex */
public interface KoinContext {
    Koin get();

    KoinApplication startKoin(Function1<? super KoinApplication, Unit> function1);
}
