package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2604B extends AbstractC2608E implements InterfaceC2688s.InterfaceC2690b {
    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b
    /* renamed from: c */
    public void mo120c(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b
    /* renamed from: g */
    public boolean mo119g(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return false;
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

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2690b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2995t trySplit() {
        return null;
    }
}
