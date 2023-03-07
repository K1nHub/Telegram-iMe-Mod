package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2402A extends AbstractC2407E implements InterfaceC2487s.InterfaceC2488a {
    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a
    /* renamed from: e */
    public void mo147e(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m625b(this, consumer);
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

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a
    /* renamed from: k */
    public boolean mo146k(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return false;
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2407E, p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2794t trySplit() {
        return null;
    }
}
