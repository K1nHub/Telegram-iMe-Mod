package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2541B extends AbstractC2545E implements InterfaceC2625s.InterfaceC2627b {
    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b
    /* renamed from: c */
    public void mo139c(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b
    /* renamed from: g */
    public boolean mo138g(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return false;
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2627b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2932t trySplit() {
        return null;
    }
}
