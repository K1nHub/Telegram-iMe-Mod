package com.iMe.bots.usecase;

import com.iMe.bots.domain.model.ShopItem;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$getAllBotsObservable$5 extends Lambda implements Function1<List<? extends ShopItem>, List<? extends ShopItem>> {
    public static final AiBotsManager$getAllBotsObservable$5 INSTANCE = new AiBotsManager$getAllBotsObservable$5();

    AiBotsManager$getAllBotsObservable$5() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AiBotsManager.kt */
    /* renamed from: com.iMe.bots.usecase.AiBotsManager$getAllBotsObservable$5$1 */
    /* loaded from: classes3.dex */
    public /* synthetic */ class C12561 extends PropertyReference1Impl {
        public static final C12561 INSTANCE = new C12561();

        C12561() {
            super(ShopItem.class, "priority", "getPriority()J", 0);
        }

        @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
        public Object get(Object obj) {
            return Long.valueOf(((ShopItem) obj).getPriority());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AiBotsManager.kt */
    /* renamed from: com.iMe.bots.usecase.AiBotsManager$getAllBotsObservable$5$2 */
    /* loaded from: classes3.dex */
    public /* synthetic */ class C12572 extends PropertyReference1Impl {
        public static final C12572 INSTANCE = new C12572();

        C12572() {
            super(ShopItem.class, "title", "getTitle()Ljava/lang/String;", 0);
        }

        @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
        public Object get(Object obj) {
            return ((ShopItem) obj).getTitle();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends ShopItem> invoke(List<? extends ShopItem> list) {
        return invoke2((List<ShopItem>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<ShopItem> invoke2(List<ShopItem> list) {
        Comparator compareBy;
        List<ShopItem> sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(C12561.INSTANCE, C12572.INSTANCE);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, compareBy);
        return sortedWith;
    }
}
