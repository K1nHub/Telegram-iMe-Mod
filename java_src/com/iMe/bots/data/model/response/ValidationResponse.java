package com.iMe.bots.data.model.response;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ValidationResponse.kt */
/* loaded from: classes4.dex */
public final class ValidationResponse {
    private float probability;
    private final String tag;

    public static /* synthetic */ ValidationResponse copy$default(ValidationResponse validationResponse, String str, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            str = validationResponse.tag;
        }
        if ((i & 2) != 0) {
            f = validationResponse.probability;
        }
        return validationResponse.copy(str, f);
    }

    public final String component1() {
        return this.tag;
    }

    public final float component2() {
        return this.probability;
    }

    public final ValidationResponse copy(String str, float f) {
        return new ValidationResponse(str, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValidationResponse) {
            ValidationResponse validationResponse = (ValidationResponse) obj;
            return Intrinsics.areEqual(this.tag, validationResponse.tag) && Float.compare(this.probability, validationResponse.probability) == 0;
        }
        return false;
    }

    public int hashCode() {
        String str = this.tag;
        return ((str == null ? 0 : str.hashCode()) * 31) + Float.floatToIntBits(this.probability);
    }

    public String toString() {
        return "ValidationResponse(tag=" + this.tag + ", probability=" + this.probability + ')';
    }

    public ValidationResponse(String str, float f) {
        this.tag = str;
        this.probability = f;
    }

    public final float getProbability() {
        return this.probability;
    }

    public final String getTag() {
        return this.tag;
    }

    public final void setProbability(float f) {
        this.probability = f;
    }
}
