package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2909C extends AbstractC2912E implements InterfaceC2992s.InterfaceC2995c {
    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c
    /* renamed from: d */
    public void mo137d(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
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

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c
    /* renamed from: i */
    public boolean mo136i(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return false;
    }

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2995c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC3299t trySplit() {
        return null;
    }
}
