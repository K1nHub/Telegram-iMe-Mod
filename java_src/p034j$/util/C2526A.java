package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2526A extends AbstractC2531E implements InterfaceC2611s.InterfaceC2612a {
    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a
    /* renamed from: e */
    public void mo147e(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m625b(this, consumer);
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

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a
    /* renamed from: k */
    public boolean mo146k(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return false;
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2918t trySplit() {
        return null;
    }
}
