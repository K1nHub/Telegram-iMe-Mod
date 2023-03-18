package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2527B extends AbstractC2531E implements InterfaceC2611s.InterfaceC2613b {
    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b
    /* renamed from: c */
    public void mo140c(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b
    /* renamed from: g */
    public boolean mo139g(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2613b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2918t trySplit() {
        return null;
    }
}
