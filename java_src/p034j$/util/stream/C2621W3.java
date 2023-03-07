package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2621W3 extends AbstractC2636Z3 implements InterfaceC2460l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2621W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2621W3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    /* renamed from: B */
    public InterfaceC2487s.InterfaceC2489b spliterator() {
        return new C2616V3(this, 0, this.f924c, 0, this.f923b);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        m479A();
        int i2 = this.f923b;
        this.f923b = i2 + 1;
        ((int[]) this.f859e)[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new int[i];
    }

    @Override // p034j$.lang.InterfaceC2361e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2460l) {
            mo291g((InterfaceC2460l) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2411I.m636g(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2460l interfaceC2460l = (InterfaceC2460l) obj2;
        while (i < i2) {
            interfaceC2460l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo292e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f924c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f924c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new int[i];
    }
}
