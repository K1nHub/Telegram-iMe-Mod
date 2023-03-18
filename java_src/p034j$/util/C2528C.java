package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2528C extends AbstractC2531E implements InterfaceC2611s.InterfaceC2614c {
    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c
    /* renamed from: d */
    public void mo134d(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m623d(this, consumer);
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

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c
    /* renamed from: i */
    public boolean mo133i(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return false;
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2614c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2531E, p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2918t trySplit() {
        return null;
    }
}
