package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2907A extends AbstractC2912E implements InterfaceC2992s.InterfaceC2993a {
    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a
    /* renamed from: e */
    public void mo150e(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a
    /* renamed from: k */
    public boolean mo149k(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return false;
    }

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC3299t trySplit() {
        return null;
    }
}
