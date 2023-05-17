package androidx.navigation;

import android.os.Bundle;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
public final class NavController$restoreStateInternal$4 extends Lambda implements Function1<NavBackStackEntry, Unit> {
    final /* synthetic */ Bundle $args;
    final /* synthetic */ List<NavBackStackEntry> $entries;
    final /* synthetic */ Ref$IntRef $lastNavigatedIndex;
    final /* synthetic */ Ref$BooleanRef $navigated;
    final /* synthetic */ NavController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$restoreStateInternal$4(Ref$BooleanRef ref$BooleanRef, List<NavBackStackEntry> list, Ref$IntRef ref$IntRef, NavController navController, Bundle bundle) {
        super(1);
        this.$navigated = ref$BooleanRef;
        this.$entries = list;
        this.$lastNavigatedIndex = ref$IntRef;
        this.this$0 = navController;
        this.$args = bundle;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
        invoke2(navBackStackEntry);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NavBackStackEntry entry) {
        List<NavBackStackEntry> emptyList;
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.$navigated.element = true;
        int indexOf = this.$entries.indexOf(entry);
        if (indexOf != -1) {
            int i = indexOf + 1;
            emptyList = this.$entries.subList(this.$lastNavigatedIndex.element, i);
            this.$lastNavigatedIndex.element = i;
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        this.this$0.addEntryToBackStack(entry.getDestination(), this.$args, entry, emptyList);
    }
}
