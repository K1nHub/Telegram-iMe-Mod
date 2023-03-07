package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2404C extends AbstractC2407E implements InterfaceC2487s.InterfaceC2490c {
    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c
    /* renamed from: d */
    public void mo134d(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
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

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c
    /* renamed from: i */
    public boolean mo133i(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return false;
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2490c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2794t trySplit() {
        return null;
    }
}
