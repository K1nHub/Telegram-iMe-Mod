package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2403B extends AbstractC2407E implements InterfaceC2487s.InterfaceC2489b {
    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b
    /* renamed from: c */
    public void mo140c(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b
    /* renamed from: g */
    public boolean mo139g(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2489b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2794t trySplit() {
        return null;
    }
}
