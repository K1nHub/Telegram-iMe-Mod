package io.grpc;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
/* loaded from: classes4.dex */
public final class NameResolver$ConfigOrError {
    private final Object config;
    private final Status status;

    public static NameResolver$ConfigOrError fromConfig(Object obj) {
        return new NameResolver$ConfigOrError(obj);
    }

    private NameResolver$ConfigOrError(Object obj) {
        this.config = Preconditions.checkNotNull(obj, "config");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NameResolver$ConfigOrError.class != obj.getClass()) {
            return false;
        }
        NameResolver$ConfigOrError nameResolver$ConfigOrError = (NameResolver$ConfigOrError) obj;
        return Objects.equal(this.status, nameResolver$ConfigOrError.status) && Objects.equal(this.config, nameResolver$ConfigOrError.config);
    }

    public int hashCode() {
        return Objects.hashCode(this.status, this.config);
    }

    public String toString() {
        if (this.config != null) {
            return MoreObjects.toStringHelper(this).add("config", this.config).toString();
        }
        return MoreObjects.toStringHelper(this).add("error", this.status).toString();
    }
}
