package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2851q;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3215e implements InterfaceC2851q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1259a;

    private /* synthetic */ C3215e(PrimitiveIterator.OfLong ofLong) {
        this.f1259a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2851q m143a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3217f ? ((C3217f) ofLong).f1261a : new C3215e(ofLong);
    }

    @Override // p033j$.util.InterfaceC2851q
    /* renamed from: d */
    public /* synthetic */ void mo142d(InterfaceC2831q interfaceC2831q) {
        this.f1259a.forEachRemaining(C3218f0.m138a(interfaceC2831q));
    }

    @Override // p033j$.util.InterfaceC2851q, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1259a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2848o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1259a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1259a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2851q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1259a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1259a.next();
    }

    @Override // p033j$.util.InterfaceC2851q
    public /* synthetic */ long nextLong() {
        return this.f1259a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1259a.remove();
    }
}
