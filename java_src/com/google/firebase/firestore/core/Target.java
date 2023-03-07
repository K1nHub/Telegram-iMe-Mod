package com.google.firebase.firestore.core;

import com.google.firebase.firestore.core.OrderBy;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.ResourcePath;
import java.util.List;
/* loaded from: classes3.dex */
public final class Target {
    private final String collectionGroup;
    private final Bound endAt;
    private final List<Filter> filters;
    private final long limit;
    private String memoizedCannonicalId;
    private final List<OrderBy> orderBys;
    private final ResourcePath path;
    private final Bound startAt;

    public Target(ResourcePath resourcePath, String str, List<Filter> list, List<OrderBy> list2, long j, Bound bound, Bound bound2) {
        this.path = resourcePath;
        this.collectionGroup = str;
        this.orderBys = list2;
        this.filters = list;
        this.limit = j;
        this.startAt = bound;
        this.endAt = bound2;
    }

    public ResourcePath getPath() {
        return this.path;
    }

    public String getCollectionGroup() {
        return this.collectionGroup;
    }

    public boolean isDocumentQuery() {
        return DocumentKey.isDocumentKey(this.path) && this.collectionGroup == null && this.filters.isEmpty();
    }

    public List<Filter> getFilters() {
        return this.filters;
    }

    public long getLimit() {
        return this.limit;
    }

    public boolean hasLimit() {
        return this.limit != -1;
    }

    public Bound getStartAt() {
        return this.startAt;
    }

    public Bound getEndAt() {
        return this.endAt;
    }

    public List<OrderBy> getOrderBy() {
        return this.orderBys;
    }

    public String getCanonicalId() {
        String str = this.memoizedCannonicalId;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getPath().canonicalString());
        if (this.collectionGroup != null) {
            sb.append("|cg:");
            sb.append(this.collectionGroup);
        }
        sb.append("|f:");
        for (Filter filter : getFilters()) {
            sb.append(filter.getCanonicalId());
        }
        sb.append("|ob:");
        for (OrderBy orderBy : getOrderBy()) {
            sb.append(orderBy.getField().canonicalString());
            sb.append(orderBy.getDirection().equals(OrderBy.Direction.ASCENDING) ? "asc" : "desc");
        }
        if (hasLimit()) {
            sb.append("|l:");
            sb.append(getLimit());
        }
        if (this.startAt != null) {
            sb.append("|lb:");
            sb.append(this.startAt.isInclusive() ? "b:" : "a:");
            sb.append(this.startAt.positionString());
        }
        if (this.endAt != null) {
            sb.append("|ub:");
            sb.append(this.endAt.isInclusive() ? "a:" : "b:");
            sb.append(this.endAt.positionString());
        }
        String sb2 = sb.toString();
        this.memoizedCannonicalId = sb2;
        return sb2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Target.class != obj.getClass()) {
            return false;
        }
        Target target = (Target) obj;
        String str = this.collectionGroup;
        if (str == null ? target.collectionGroup == null : str.equals(target.collectionGroup)) {
            if (this.limit == target.limit && this.orderBys.equals(target.orderBys) && this.filters.equals(target.filters) && this.path.equals(target.path)) {
                Bound bound = this.startAt;
                if (bound == null ? target.startAt == null : bound.equals(target.startAt)) {
                    Bound bound2 = this.endAt;
                    Bound bound3 = target.endAt;
                    return bound2 != null ? bound2.equals(bound3) : bound3 == null;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.orderBys.hashCode() * 31;
        String str = this.collectionGroup;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j = this.limit;
        int hashCode3 = (((((((hashCode + hashCode2) * 31) + this.filters.hashCode()) * 31) + this.path.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        Bound bound = this.startAt;
        int hashCode4 = (hashCode3 + (bound != null ? bound.hashCode() : 0)) * 31;
        Bound bound2 = this.endAt;
        return hashCode4 + (bound2 != null ? bound2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Query(");
        sb.append(this.path.canonicalString());
        if (this.collectionGroup != null) {
            sb.append(" collectionGroup=");
            sb.append(this.collectionGroup);
        }
        if (!this.filters.isEmpty()) {
            sb.append(" where ");
            for (int i = 0; i < this.filters.size(); i++) {
                if (i > 0) {
                    sb.append(" and ");
                }
                sb.append(this.filters.get(i));
            }
        }
        if (!this.orderBys.isEmpty()) {
            sb.append(" order by ");
            for (int i2 = 0; i2 < this.orderBys.size(); i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(this.orderBys.get(i2));
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
