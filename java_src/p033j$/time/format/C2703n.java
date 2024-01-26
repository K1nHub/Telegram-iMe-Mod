package p033j$.time.format;

import java.text.ParsePosition;
import java.util.Iterator;
import java.util.Set;
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
class C2703n {

    /* renamed from: a */
    protected String f547a;

    /* renamed from: b */
    protected String f548b;

    /* renamed from: c */
    protected char f549c;

    /* renamed from: d */
    protected C2703n f550d;

    /* renamed from: e */
    protected C2703n f551e;

    private C2703n(String str, String str2, C2703n c2703n) {
        this.f547a = str;
        this.f548b = str2;
        this.f550d = c2703n;
        this.f549c = str.length() == 0 ? (char) 65535 : this.f547a.charAt(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2703n(String str, String str2, C2703n c2703n, C2692c c2692c) {
        this(str, str2, c2703n);
    }

    /* renamed from: a */
    private boolean m893a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f547a.length() && mo892b(str.charAt(i), this.f547a.charAt(i))) {
            i++;
        }
        if (i != this.f547a.length()) {
            C2703n mo890d = mo890d(this.f547a.substring(i), this.f548b, this.f550d);
            this.f547a = str.substring(0, i);
            this.f550d = mo890d;
            if (i < str.length()) {
                this.f550d.f551e = mo890d(str.substring(i), str2, null);
                this.f548b = null;
            } else {
                this.f548b = str2;
            }
            return true;
        } else if (i >= str.length()) {
            this.f548b = str2;
            return true;
        } else {
            String substring = str.substring(i);
            for (C2703n c2703n = this.f550d; c2703n != null; c2703n = c2703n.f551e) {
                if (mo892b(c2703n.f549c, substring.charAt(0))) {
                    return c2703n.m893a(substring, str2);
                }
            }
            C2703n mo890d2 = mo890d(substring, str2, null);
            mo890d2.f551e = this.f550d;
            this.f550d = mo890d2;
            return true;
        }
    }

    /* renamed from: e */
    public static C2703n m889e(Set set, C2709t c2709t) {
        C2703n c2703n = c2709t.m853j() ? new C2703n("", null, null) : new C2702m("", null, null, null);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            c2703n.m893a(str, str);
        }
        return c2703n;
    }

    /* renamed from: b */
    protected boolean mo892b(char c, char c2) {
        return c == c2;
    }

    /* renamed from: c */
    public String m891c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (mo888f(charSequence, index, length)) {
            int length2 = this.f547a.length() + index;
            C2703n c2703n = this.f550d;
            if (c2703n != null && length2 != length) {
                while (true) {
                    if (!mo892b(c2703n.f549c, charSequence.charAt(length2))) {
                        c2703n = c2703n.f551e;
                        if (c2703n == null) {
                            break;
                        }
                    } else {
                        parsePosition.setIndex(length2);
                        String m891c = c2703n.m891c(charSequence, parsePosition);
                        if (m891c != null) {
                            return m891c;
                        }
                    }
                }
            }
            parsePosition.setIndex(length2);
            return this.f548b;
        }
        return null;
    }

    /* renamed from: d */
    protected C2703n mo890d(String str, String str2, C2703n c2703n) {
        return new C2703n(str, str2, c2703n);
    }

    /* renamed from: f */
    protected boolean mo888f(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).startsWith(this.f547a, i);
        }
        int length = this.f547a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!mo892b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
