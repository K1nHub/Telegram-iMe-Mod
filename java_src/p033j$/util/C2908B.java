package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2908B extends AbstractC2912E implements InterfaceC2992s.InterfaceC2994b {
    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b
    /* renamed from: c */
    public void mo143c(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b
    /* renamed from: g */
    public boolean mo142g(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return false;
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

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2994b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2912E, p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC3299t trySplit() {
        return null;
    }
}
