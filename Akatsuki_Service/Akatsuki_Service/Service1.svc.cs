using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Akatsuki_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {

        Akatsuki_LINQDataContext db = new Akatsuki_LINQDataContext();

        public bool addGood(int studentNum, string gName, decimal gPrice, string gdescription, string gImage, string gcategory)
        {
            var good = new Good
            {
                Student_Number = studentNum,
                Goods_Name = gName,
                Goods_Price = gPrice,
                Goods_Description = gdescription,
                Goods_Image = gImage,
                Goods_Catergory = gcategory
            };

            db.Goods.InsertOnSubmit(good);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool addService(int studentNum, string sName, decimal sPrice, string sdescription, string sImage, string scategory)
        {
            var service = new Service
            {
                Student_Number = studentNum,
                Services_Name = sName,
                Services_Price = sPrice,
                Services_Description = sdescription,
                Services_Image_ = sImage,
                Services_Catergory = scategory
            };

            db.Services.InsertOnSubmit(service);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool deleteGood(int goodID)
        {

            dynamic good = (from m in db.Goods where m.Goods_ID.Equals(goodID) select m);
            foreach (Good row in good)
            {
                if (row != null)
                {
                    db.Goods.DeleteOnSubmit(row);
                }
            }
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool deleteService(int serviceID)
        {
            dynamic service = (from m in db.Services where m.Services_ID.Equals(serviceID) select m);
            foreach (Service row in service)
            {
                if (row != null)
                {
                    db.Services.DeleteOnSubmit(row);
                }
            }
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public Good getGoodItem(int ID)
        {
            dynamic GI = (from m in db.Goods where (ID.Equals(m.Goods_ID)) select m).FirstOrDefault();

            var good = new Good
            {
                Student_Number = GI.Student_Number,
                Goods_Name = GI.Goods_Name,
                Goods_Price = GI.Goods_Price,
                Goods_Description = GI.Goods_Description,
                Goods_Image = GI.Goods_Image,
                Goods_Catergory = GI.Goods_Catergory
            };

            return good;
        }

        public List<Good> getGoodsList()
        {
            var list = new List<Good>();

            dynamic dbl = (from m in db.Goods select m);

            foreach (Good g in dbl)
            {
                var user = new Good
                {
                    Goods_ID= g.Goods_ID,
                    Goods_Price = g.Goods_Price,
                    Goods_Image = g.Goods_Image,
                    Goods_Name = g.Goods_Name,
                    Goods_Catergory = g.Goods_Catergory,
                    Goods_Description = g.Goods_Description

                };

                list.Add(user);

            }
            return list;
        }

        public Service getServiceItem(int ID)
        {
            dynamic SI = (from m in db.Services where (ID.Equals(m.Services_ID)) select m).FirstOrDefault();
            var service = new Service
            {
                Services_Image_ = SI.Services_Image_,
                Services_Name = SI.Services_Name,
                Services_Description = SI.Services_Description,
                Services_Price = SI.Services_Price,
                Services_Catergory = SI.Services_Catergory,
                Services_ID = SI.Services_ID
            };

            return service;
        }

        public List<GoodReview> getGoodReviews()
        {
            var list = new List<GoodReview>();

            dynamic dbl = (from m in db.GoodReviews select m);

            foreach (GoodReview g in dbl)
            {
                var user = new GoodReview
                {
                    reviewID = g.reviewID,
                    gID = g.gID,
                    sNUM = g.sNUM,
                    comment = g.comment
                };

                list.Add(user);

            }
            return list;

        }

        public GoodReview getGoodReview(int goodID)
        {
            dynamic GI = (from m in db.GoodReviews where m.reviewID == goodID select m);
            return GI;
        }

        public List<ServiceReview> getServiceReviews()
        {
            var list = new List<ServiceReview>();

            dynamic dbl = (from m in db.ServiceReviews select m);

            foreach (ServiceReview g in dbl)
            {
                var user = new ServiceReview
                {
                    reviewID = g.reviewID,
                    sID = g.sID,
                    sNUM = g.sNUM,
                    comment = g.comment
                };

                list.Add(user);

            }
            return list;
        }

        public ServiceReview getServiceReview(int serviceID)
        {
            dynamic GI = (from m in db.ServiceReviews where m.reviewID == serviceID select m);
            return GI;
        }

        public List<Service> getServicesList()
        {
            var list = new List<Service>();

            dynamic dbl = (from m in db.Services select m);

            foreach (Service g in dbl)
            {
                var service = new Service
                {
                    Services_Image_ = g.Services_Image_,
                    Services_Name = g.Services_Name,
                    Services_Description = g.Services_Description,
                    Services_Price = g.Services_Price,
                    Services_Catergory = g.Services_Catergory,
                    Services_ID = g.Services_ID
                };
                list.Add(service);

            }
            return list;
        }

        public string SignIn(string email, string password)
        {
            dynamic user = (from m in db.Students where m.Student_Personal_Email.Equals(email)&&m.Password.Equals(password) select m).FirstOrDefault();
            string ReturnS = " ";
            var student = new Student
            {
               Student_Personal_Email =user.Student_Personal_Email,
                Password = user.Password,
                Student_Number=user.Student_Number
            };
            ReturnS = Convert.ToString(student.Student_Number);

            return ReturnS;
            //return "123456789";
        }


        public bool SignUp(int sNum, string sAddress, string sEmail, string personalEmail, int cellphoneNum, string fName, string lName, string password)
        {

            var user = new Student
            {
                Student_Number = sNum,
                Student_Email = sEmail,
                Student_Address = sAddress,
                Student_Personal_Email = personalEmail,
                Student_Name = fName,
                Student_Surname = lName,
                Student_Username = "hello",
                Student_Cellphone_Number = cellphoneNum,
                Password = password,
           };

            db.Students.InsertOnSubmit(user);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        


        }

        public bool Add_To_Cart_Service(int sNUm, int ServiceID, int ItemQuantity)
        {

            var Item = new ServiceCart
            {
               sNUM = sNUm,
                ServiceID = ServiceID,
                ItemQuantity = ItemQuantity,
                
            };

            db.ServiceCarts.InsertOnSubmit(Item);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }


         
        }

        public bool Add_To_Cart_Product(int sNUm, int ProductID, int ItemQuantity)
        {
            var Item = new ProductCart
            {
                sNUM = sNUm,
                ProductID = ProductID,
                ItemQuantity = ItemQuantity,

            };

            db.ProductCarts.InsertOnSubmit(Item);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }

        }

        public bool deleteGoodCart(int goodID)
        {
            dynamic good = (from m in db.ProductCarts where m.CartID.Equals(goodID) select m);
            foreach (ProductCart row in good)
            {
                if (row != null)
                {
                    db.ProductCarts.DeleteOnSubmit(row);
                }
            }
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool deleteServiceCart(int ServiceID)
        {
            dynamic good = (from m in db.ServiceCarts where m.CartID.Equals(ServiceID) select m);
            foreach (ServiceCart row in good)
            {
                if (row != null)
                {
                    db.ServiceCarts.DeleteOnSubmit(row);
                }
            }
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public List<ProductCart> getProductCartList()
        {
            var list = new List<ProductCart>();

            dynamic dbl = (from m in db.ProductCarts select m);

            foreach (ProductCart g in dbl)
            {
                var CartProduct = new ProductCart
                {
                    sNUM = g.sNUM,
                    ProductID = g.ProductID,
                    ItemQuantity = g.ItemQuantity,
                   
                };
                list.Add(CartProduct);

            }
            return list;
        }

        public List<ServiceCart> getServiceCartList()
        {
            var list = new List<ServiceCart>();

            dynamic dbl = (from m in db.ServiceCarts select m);

            foreach (ServiceCart g in dbl)
            {
                var CartService = new ServiceCart
                {
                    sNUM = g.sNUM,
                    ServiceID = g.ServiceID,
                    ItemQuantity = g.ItemQuantity,

                };
                list.Add(CartService);

            }
            return list;
        }
    
    }
}
