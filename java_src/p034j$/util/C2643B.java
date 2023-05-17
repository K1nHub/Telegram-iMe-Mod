package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2643B extends AbstractC2647E implements InterfaceC2727s.InterfaceC2729b {
    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b
    /* renamed from: c */
    public void mo125c(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m608c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b
    /* renamed from: g */
    public boolean mo124g(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return false;
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2729b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC3034t trySplit() {
        return null;
    }
}
