package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2623q;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2987e implements InterfaceC2623q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1174a;

    private /* synthetic */ C2987e(PrimitiveIterator.OfLong ofLong) {
        this.f1174a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2623q m157a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2989f ? ((C2989f) ofLong).f1176a : new C2987e(ofLong);
    }

    @Override // p034j$.util.InterfaceC2623q
    /* renamed from: d */
    public /* synthetic */ void mo156d(InterfaceC2603q interfaceC2603q) {
        this.f1174a.forEachRemaining(C2990f0.m152a(interfaceC2603q));
    }

    @Override // p034j$.util.InterfaceC2623q, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1174a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2620o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1174a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1174a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2623q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1174a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1174a.next();
    }

    @Override // p034j$.util.InterfaceC2623q
    public /* synthetic */ long nextLong() {
        return this.f1174a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1174a.remove();
    }
}
