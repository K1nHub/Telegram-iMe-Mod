package com.iMe.feature.devTools;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DevViewModel.kt */
/* loaded from: classes3.dex */
public final class DevViewModel$container$1 extends Lambda implements Function1<DevState, Unit> {
    final /* synthetic */ DevViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DevViewModel$container$1(DevViewModel devViewModel) {
        super(1);
        this.this$0 = devViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DevState devState) {
        invoke2(devState);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(DevState it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.onCreate();
    }
}
