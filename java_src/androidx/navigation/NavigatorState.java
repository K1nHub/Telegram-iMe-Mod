package androidx.navigation;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
/* compiled from: NavigatorState.kt */
/* loaded from: classes.dex */
public abstract class NavigatorState {
    private final MutableStateFlow<List<NavBackStackEntry>> _backStack;
    private final MutableStateFlow<Set<NavBackStackEntry>> _transitionsInProgress;
    private final StateFlow<List<NavBackStackEntry>> backStack;
    private final ReentrantLock backStackLock = new ReentrantLock(true);
    private boolean isNavigating;
    private final StateFlow<Set<NavBackStackEntry>> transitionsInProgress;

    public abstract NavBackStackEntry createBackStackEntry(NavDestination navDestination, Bundle bundle);

    public NavigatorState() {
        List emptyList;
        Set emptySet;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableStateFlow<List<NavBackStackEntry>> MutableStateFlow = StateFlowKt.MutableStateFlow(emptyList);
        this._backStack = MutableStateFlow;
        emptySet = SetsKt__SetsKt.emptySet();
        MutableStateFlow<Set<NavBackStackEntry>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(emptySet);
        this._transitionsInProgress = MutableStateFlow2;
        this.backStack = FlowKt.asStateFlow(MutableStateFlow);
        this.transitionsInProgress = FlowKt.asStateFlow(MutableStateFlow2);
    }

    public final boolean isNavigating() {
        return this.isNavigating;
    }

    public final void setNavigating(boolean z) {
        this.isNavigating = z;
    }

    public final StateFlow<List<NavBackStackEntry>> getBackStack() {
        return this.backStack;
    }

    public final StateFlow<Set<NavBackStackEntry>> getTransitionsInProgress() {
        return this.transitionsInProgress;
    }

    public void push(NavBackStackEntry backStackEntry) {
        List<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._backStack;
            plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) mutableStateFlow.getValue()), (Object) backStackEntry);
            mutableStateFlow.setValue(plus);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void pop(NavBackStackEntry popUpTo, boolean z) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._backStack;
            ArrayList arrayList = new ArrayList();
            for (Object obj : mutableStateFlow.getValue()) {
                if (!(!Intrinsics.areEqual((NavBackStackEntry) obj, popUpTo))) {
                    break;
                }
                arrayList.add(obj);
            }
            mutableStateFlow.setValue(arrayList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        List minus;
        List<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._backStack;
        minus = CollectionsKt___CollectionsKt.minus(mutableStateFlow.getValue(), CollectionsKt.last((List<? extends Object>) this._backStack.getValue()));
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) minus), (Object) backStackEntry);
        mutableStateFlow.setValue(plus);
    }

    public void markTransitionComplete(NavBackStackEntry entry) {
        Set<NavBackStackEntry> minus;
        Intrinsics.checkNotNullParameter(entry, "entry");
        MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
        minus = SetsKt___SetsKt.minus(mutableStateFlow.getValue(), entry);
        mutableStateFlow.setValue(minus);
    }
}
