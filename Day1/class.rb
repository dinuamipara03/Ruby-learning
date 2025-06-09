class A
  Z = 1

  def z
    Z
  end
end

class B < A
end

p B.new.z 



class A
  def m
    1
  end
end

class B < A
  def m
    2
  end
end

p B.new.m


class A
  def m
    1
  end
end

class B < A
  def m
    2 + super
  end
end

p B.new.m 