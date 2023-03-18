package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2609q;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2973e implements InterfaceC2609q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1173a;

    private /* synthetic */ C2973e(PrimitiveIterator.OfLong ofLong) {
        this.f1173a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2609q m158a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2975f ? ((C2975f) ofLong).f1175a : new C2973e(ofLong);
    }

    @Override // p034j$.util.InterfaceC2609q
    /* renamed from: d */
    public /* synthetic */ void mo157d(InterfaceC2589q interfaceC2589q) {
        this.f1173a.forEachRemaining(C2976f0.m153a(interfaceC2589q));
    }

    @Override // p034j$.util.InterfaceC2609q, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1173a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2606o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1173a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1173a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2609q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1173a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1173a.next();
    }

    @Override // p034j$.util.InterfaceC2609q
    public /* synthetic */ long nextLong() {
        return this.f1173a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1173a.remove();
    }
}
