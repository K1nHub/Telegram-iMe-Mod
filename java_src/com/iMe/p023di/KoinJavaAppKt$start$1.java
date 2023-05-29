package com.iMe.p023di;

import android.content.Context;
import com.iMe.i_staking.p025di.StakingModuleKt;
import com.iMe.storage.data.p026di.DataComponentKt;
import com.iMe.storage.domain.p029di.DomainComponentKt;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.koin.android.ext.koin.KoinExtKt;
import org.koin.core.KoinApplication;
import org.koin.core.module.Module;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KoinJavaApp.kt */
/* renamed from: com.iMe.di.KoinJavaAppKt$start$1 */
/* loaded from: classes3.dex */
public final class KoinJavaAppKt$start$1 extends Lambda implements Function1<KoinApplication, Unit> {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KoinJavaAppKt$start$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(KoinApplication koinApplication) {
        invoke2(koinApplication);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(KoinApplication startKoin) {
        List plus;
        List plus2;
        List plus3;
        List<Module> plus4;
        Intrinsics.checkNotNullParameter(startKoin, "$this$startKoin");
        KoinExtKt.androidContext(startKoin, this.$context);
        KoinExtKt.androidLogger$default(startKoin, null, 1, null);
        plus = CollectionsKt___CollectionsKt.plus((Collection) FeaturesComponentKt.getFeatureModules(), (Iterable) DataComponentKt.getDataModules());
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) DomainComponentKt.getDomainModules());
        plus3 = CollectionsKt___CollectionsKt.plus((Collection) plus2, (Iterable) PresentationComponentKt.getPresentationModules());
        plus4 = CollectionsKt___CollectionsKt.plus(plus3, StakingModuleKt.getStakingModule());
        startKoin.modules(plus4);
    }
}
