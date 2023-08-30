package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C3126W3 extends AbstractC3141Z3 implements InterfaceC2965l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3126W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3126W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    /* renamed from: B */
    public InterfaceC2992s.InterfaceC2994b spliterator() {
        return new C3121V3(this, 0, this.f1028c, 0, this.f1027b);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        m482A();
        int i2 = this.f1027b;
        this.f1027b = i2 + 1;
        ((int[]) this.f963e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2866e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2965l) {
            mo294g((InterfaceC2965l) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2916I.m638g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2965l interfaceC2965l = (InterfaceC2965l) obj2;
        while (i < i2) {
            interfaceC2965l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo295e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1028c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1028c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new int[i];
    }
}
