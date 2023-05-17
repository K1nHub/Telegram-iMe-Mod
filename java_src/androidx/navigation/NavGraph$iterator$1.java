package androidx.navigation;

import androidx.collection.SparseArrayCompat;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: NavGraph.kt */
/* loaded from: classes.dex */
public final class NavGraph$iterator$1 implements Iterator<NavDestination>, p034j$.util.Iterator, p034j$.util.Iterator {
    private int index = -1;
    final /* synthetic */ NavGraph this$0;
    private boolean wentToNext;

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavGraph$iterator$1(NavGraph navGraph) {
        this.this$0 = navGraph;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        return this.index + 1 < this.this$0.getNodes().size();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public NavDestination next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.wentToNext = true;
        SparseArrayCompat<NavDestination> nodes = this.this$0.getNodes();
        int i = this.index + 1;
        this.index = i;
        NavDestination valueAt = nodes.valueAt(i);
        Intrinsics.checkNotNullExpressionValue(valueAt, "nodes.valueAt(++index)");
        return valueAt;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public void remove() {
        if (!this.wentToNext) {
            throw new IllegalStateException("You must call next() before you can remove an element".toString());
        }
        SparseArrayCompat<NavDestination> nodes = this.this$0.getNodes();
        nodes.valueAt(this.index).setParent(null);
        nodes.removeAt(this.index);
        this.index--;
        this.wentToNext = false;
    }
}
