package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2603A extends AbstractC2608E implements InterfaceC2688s.InterfaceC2689a {
    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a
    /* renamed from: e */
    public void mo127e(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a
    /* renamed from: k */
    public boolean mo126k(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return false;
    }

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2689a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2995t trySplit() {
        return null;
    }
}
