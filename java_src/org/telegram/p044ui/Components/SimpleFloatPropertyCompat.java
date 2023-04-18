package org.telegram.p044ui.Components;

import androidx.dynamicanimation.animation.FloatPropertyCompat;
/* renamed from: org.telegram.ui.Components.SimpleFloatPropertyCompat */
/* loaded from: classes6.dex */
public class SimpleFloatPropertyCompat<T> extends FloatPropertyCompat<T> {
    private Getter<T> getter;
    private float multiplier;
    private Setter<T> setter;

    /* renamed from: org.telegram.ui.Components.SimpleFloatPropertyCompat$Getter */
    /* loaded from: classes6.dex */
    public interface Getter<T> {
        float get(T t);
    }

    /* renamed from: org.telegram.ui.Components.SimpleFloatPropertyCompat$Setter */
    /* loaded from: classes6.dex */
    public interface Setter<T> {
        void set(T t, float f);
    }

    public SimpleFloatPropertyCompat(String str, Getter<T> getter, Setter<T> setter) {
        super(str);
        this.multiplier = 1.0f;
        this.getter = getter;
        this.setter = setter;
    }

    public SimpleFloatPropertyCompat<T> setMultiplier(float f) {
        this.multiplier = f;
        return this;
    }

    public float getMultiplier() {
        return this.multiplier;
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public float getValue(T t) {
        return this.getter.get(t) * this.multiplier;
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public void setValue(T t, float f) {
        this.setter.set(t, f / this.multiplier);
    }
}
