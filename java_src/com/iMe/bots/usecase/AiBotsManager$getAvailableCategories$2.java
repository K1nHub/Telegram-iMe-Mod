package com.iMe.bots.usecase;

import com.iMe.bots.domain.model.SmartBotCategory;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$getAvailableCategories$2 extends Lambda implements Function1<List<? extends SmartBotCategory>, List<? extends SmartBotCategory>> {
    public static final AiBotsManager$getAvailableCategories$2 INSTANCE = new AiBotsManager$getAvailableCategories$2();

    AiBotsManager$getAvailableCategories$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends SmartBotCategory> invoke(List<? extends SmartBotCategory> list) {
        return invoke2((List<SmartBotCategory>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<SmartBotCategory> invoke2(List<SmartBotCategory> list) {
        List<SmartBotCategory> sortedWith;
        Intrinsics.checkNotNullParameter(list, "list");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.iMe.bots.usecase.AiBotsManager$getAvailableCategories$2$invoke$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SmartBotCategory) t2).getPriority()), Integer.valueOf(((SmartBotCategory) t).getPriority()));
                return compareValues;
            }
        });
        return sortedWith;
    }
}
