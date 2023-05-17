package androidx.navigation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavController.kt */
/* loaded from: classes.dex */
public final class NavController$handleDeepLink$2 extends Lambda implements Function1<NavOptionsBuilder, Unit> {
    final /* synthetic */ NavDestination $node;
    final /* synthetic */ NavController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$handleDeepLink$2(NavDestination navDestination, NavController navController) {
        super(1);
        this.$node = navDestination;
        this.this$0 = navController;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavController.kt */
    /* renamed from: androidx.navigation.NavController$handleDeepLink$2$1 */
    /* loaded from: classes.dex */
    public static final class C02341 extends Lambda implements Function1<AnimBuilder, Unit> {
        public static final C02341 INSTANCE = new C02341();

        C02341() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(AnimBuilder animBuilder) {
            invoke2(animBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(AnimBuilder anim) {
            Intrinsics.checkNotNullParameter(anim, "$this$anim");
            anim.setEnter(0);
            anim.setExit(0);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
        invoke2(navOptionsBuilder);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
        if (r0 != false) goto L14;
     */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invoke2(androidx.navigation.NavOptionsBuilder r7) {
        /*
            r6 = this;
            java.lang.String r0 = "$this$navOptions"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            androidx.navigation.NavController$handleDeepLink$2$1 r0 = androidx.navigation.NavController$handleDeepLink$2.C02341.INSTANCE
            r7.anim(r0)
            androidx.navigation.NavDestination r0 = r6.$node
            boolean r1 = r0 instanceof androidx.navigation.NavGraph
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L42
            androidx.navigation.NavDestination$Companion r1 = androidx.navigation.NavDestination.Companion
            kotlin.sequences.Sequence r0 = r1.getHierarchy(r0)
            androidx.navigation.NavController r1 = r6.this$0
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L3e
            java.lang.Object r4 = r0.next()
            androidx.navigation.NavDestination r4 = (androidx.navigation.NavDestination) r4
            androidx.navigation.NavDestination r5 = r1.getCurrentDestination()
            if (r5 == 0) goto L35
            androidx.navigation.NavGraph r5 = r5.getParent()
            goto L36
        L35:
            r5 = 0
        L36:
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L1e
            r0 = r3
            goto L3f
        L3e:
            r0 = r2
        L3f:
            if (r0 == 0) goto L42
            goto L43
        L42:
            r2 = r3
        L43:
            if (r2 == 0) goto L60
            boolean r0 = androidx.navigation.NavController.access$getDeepLinkSaveState$cp()
            if (r0 == 0) goto L60
            androidx.navigation.NavGraph$Companion r0 = androidx.navigation.NavGraph.Companion
            androidx.navigation.NavController r1 = r6.this$0
            androidx.navigation.NavGraph r1 = r1.getGraph()
            androidx.navigation.NavDestination r0 = r0.findStartDestination(r1)
            int r0 = r0.getId()
            androidx.navigation.NavController$handleDeepLink$2$2 r1 = androidx.navigation.NavController$handleDeepLink$2.C02352.INSTANCE
            r7.popUpTo(r0, r1)
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController$handleDeepLink$2.invoke2(androidx.navigation.NavOptionsBuilder):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavController.kt */
    /* renamed from: androidx.navigation.NavController$handleDeepLink$2$2 */
    /* loaded from: classes.dex */
    public static final class C02352 extends Lambda implements Function1<PopUpToBuilder, Unit> {
        public static final C02352 INSTANCE = new C02352();

        C02352() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PopUpToBuilder popUpToBuilder) {
            invoke2(popUpToBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(PopUpToBuilder popUpTo) {
            Intrinsics.checkNotNullParameter(popUpTo, "$this$popUpTo");
            popUpTo.setSaveState(true);
        }
    }
}
