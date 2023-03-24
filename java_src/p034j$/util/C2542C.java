package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2542C extends AbstractC2545E implements InterfaceC2625s.InterfaceC2628c {
    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c
    /* renamed from: d */
    public void mo133d(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
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

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c
    /* renamed from: i */
    public boolean mo132i(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return false;
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2628c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2545E, p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2932t trySplit() {
        return null;
    }
}
