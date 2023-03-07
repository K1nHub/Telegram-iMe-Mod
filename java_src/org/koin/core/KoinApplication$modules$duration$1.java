package org.koin.core;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.module.Module;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KoinApplication.kt */
/* loaded from: classes4.dex */
public final class KoinApplication$modules$duration$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ List<Module> $modules;
    final /* synthetic */ KoinApplication this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KoinApplication$modules$duration$1(KoinApplication koinApplication, List<Module> list) {
        super(0);
        this.this$0 = koinApplication;
        this.$modules = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.loadModules(this.$modules);
    }
}
