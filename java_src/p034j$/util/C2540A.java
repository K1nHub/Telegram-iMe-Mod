package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2540A extends AbstractC2545E implements InterfaceC2625s.InterfaceC2626a {
    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a
    /* renamed from: e */
    public void mo146e(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
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

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a
    /* renamed from: k */
    public boolean mo145k(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return false;
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2932t trySplit() {
        return null;
    }
}
